import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App with GetX'),
      ),
      body: ToDoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddTaskPage());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ToDoList extends StatelessWidget {
  final ToDoController controller = Get.put(ToDoController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: controller.tasks.length,
        itemBuilder: (context, index) {
          final task = controller.tasks[index];
          return ListTile(
            title: Text(task),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                controller.removeTask(index);
              },
            ),
          );
        },
      ),
    );
  }
}

class AddTaskPage extends StatelessWidget {
  final ToDoController controller = Get.find();
  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: const InputDecoration(
                labelText: 'Task',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (taskController.text.isNotEmpty) {
                  controller.addTask(taskController.text);
                  Get.back();
                }
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}

class ToDoController extends GetxController {
  var tasks = <String>[].obs;

  void addTask(String task) {
    tasks.add(task);
  }

  void removeTask(int index) {
    tasks.removeAt(index);
  }
}

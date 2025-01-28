import 'package:flutter/material.dart';

import 'db.dart';
import 'main.dart';


class AddPage extends StatefulWidget
{
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage>
{

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  late MyDb db = MyDb();

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    db.open();

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add Data"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                    TextField
                      (
                        controller: fname,
                        decoration: InputDecoration
                        (
                          hintText: "Enter Firstname"
                        ),
                      ),
                      SizedBox(height: 50),
                    TextField
                      (
                      controller: lname,
                      decoration: InputDecoration
                        (
                          hintText: "Enter Lastname"
                      ),
                    ),
                    SizedBox(height: 50),

                    TextField
                      (
                      controller: email,
                      decoration: InputDecoration
                        (
                          hintText: "Enter Email"
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(onPressed: ()
                    {
                        String name = fname.text.toString();
                        String surname = lname.text.toString();
                        String email1 = email.text.toString();

                        db.db.rawInsert("insert into students (fname,lname,email) values (?,?,?)",[name,surname,email1]);
                        print("inserted");
                        Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));



                    }, child: Text("Add Data"))



                ],


              ),
          ),

      );
  }
}

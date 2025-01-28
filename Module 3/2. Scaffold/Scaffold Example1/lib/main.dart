Widget build(BuildContext context) {
return Scaffold(
	appBar: AppBar(title: const Text('TopsApp')),
	body: const Center(
	child: Text(
		"Welcome to TopsApp!!!",
		style: TextStyle(
		color: Colors.black,
		fontSize: 40.0,
		),
	),
	),
	floatingActionButton: FloatingActionButton(
	elevation: 10.0,
	child: const Icon(Icons.add),
	onPressed: () {
		// action on button press
	},
	),
);
}

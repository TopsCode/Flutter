import 'package:flutter/material.dart';

import 'db.dart';
import 'main.dart';

class EditData extends StatefulWidget
{
    late String email;
    EditData({required this.email});
  @override
  State<EditData> createState() => _EditDataState();
}

class _EditDataState extends State<EditData>
{
  late MyDb db = MyDb();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();


  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    db.open();

    Future.delayed(Duration(milliseconds: 500),()async
    {
      var data = await db.getstudent(widget.email);
      if(data!=null)
      {
        fname.text = data["fname"];
        lname.text = data["lname"].toString();
        email.text = data["email"];
        setState(() {});
      }
      else
      {
        print("No any data with Email : " + widget.email.toString());
      }

    });

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Edit Page ${widget.email}"),),
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

              db.db.rawUpdate("update students set fname =?,lname=?,email=? where email=?",[name,surname,email1,widget.email]);
             //db.db.rawInsert("insert into students (fname,lname,email) values (?,?,?)",[name,surname,email1]);
              print("updated");
              Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));



            }, child: Text("Update"))



          ],


        ),
      ),
      );
  }
}

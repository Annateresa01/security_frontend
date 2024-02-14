import 'package:flutter/material.dart';
import 'package:securityapp/services/addvisitapi.dart';

class addvisitor extends StatefulWidget {
  const addvisitor({super.key});

  @override
  State<addvisitor> createState() => _addvisitorState();
}

class _addvisitorState extends State<addvisitor> {
  TextEditingController add1=new TextEditingController();
  TextEditingController add2=new TextEditingController();
  TextEditingController add3=new TextEditingController();

  void addvisit()async{
    final response=await addvisitapi().addVisitors(add1.text, add2.text, add3.text);

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextField(
                controller: add1,
                decoration: InputDecoration(
                labelText: "enter name",
                border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: add2,
                decoration: InputDecoration(
                  labelText: "enter phn no",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: add3,
                decoration: InputDecoration(
                  labelText: "purpose",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: addvisit, child: Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}

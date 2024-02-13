import 'package:flutter/material.dart';

class addsec extends StatefulWidget {
  const addsec({super.key});

  @override
  State<addsec> createState() => _addsecState();
}

class _addsecState extends State<addsec> {
  TextEditingController add1=new TextEditingController();
  TextEditingController add2=new TextEditingController();
  TextEditingController add3=new TextEditingController();
  TextEditingController add4=new TextEditingController();
  TextEditingController add5=new TextEditingController();
  TextEditingController add6=new TextEditingController();
  void addsecurity()async{

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add security"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 30,),
                TextField(
                  controller: add1,
                  decoration: InputDecoration(
                  labelText: "name",
                  border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: add2,
                  decoration: InputDecoration(
                    labelText: "employee Id",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: add3,
                  decoration: InputDecoration(
                    labelText: "adress",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: add4,
                  decoration: InputDecoration(
                    labelText: "phnNo",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: add5,
                  decoration: InputDecoration(
                    labelText: "emailId",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: add6,
                  decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: addsecurity, child: Text("ADD"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:securityapp/services/addsecapi.dart';

class addsecmenu extends StatefulWidget {
  const addsecmenu({super.key});

  @override
  State<addsecmenu> createState() => _addsecmenuState();
}

class _addsecmenuState extends State<addsecmenu> {

  TextEditingController add1=new TextEditingController();
  TextEditingController add2=new TextEditingController();
  TextEditingController add3=new TextEditingController();
  TextEditingController add4=new TextEditingController();
  TextEditingController add5=new TextEditingController();
  TextEditingController add6=new TextEditingController();
  void addsecurity()async
  {
    final response=await addsecapi().addsecurities(add1.text, add2.text, add3.text, add4.text, add5.text, add6.text);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
      );
  }
}

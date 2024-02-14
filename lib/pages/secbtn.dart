import 'package:flutter/material.dart';
import 'package:securityapp/pages/addvisitor.dart';
import 'package:securityapp/services/addsecapi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class secbtn extends StatefulWidget {
  const secbtn({super.key});

  @override
  State<secbtn> createState() => _secbtnState();
}

class _secbtnState extends State<secbtn> {
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();

  void loginsec()async
  {
    final response=await addsecapi().loginApi(email.text, password.text);
    if(response["status"]=="invalid emailid"){
     print("invalid emailid");
    }
    else if(response["status"]=="Success"){
      String userId=response["userdata"]["_id"].toString();
      print("successfuly login :"+userId);
      SharedPreferences.setMockInitialValues({});
      SharedPreferences preferences=await SharedPreferences.getInstance();
      preferences.setString("userId", userId);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>addvisitor()));
      //print("invalid emailid");
    }
    else
    {
      print("invalid password");
    }


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
                controller: email,
                decoration: InputDecoration(
                labelText: "enter mailid",
                border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: "enter password",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
             ElevatedButton(onPressed: loginsec, child: Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}

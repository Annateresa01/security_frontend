import 'package:flutter/material.dart';
import 'package:securityapp/pages/securitylogin.dart';

class adminlogin extends StatefulWidget {
  const adminlogin({super.key});

  @override
  State<adminlogin> createState() => _adminloginState();
}

class _adminloginState extends State<adminlogin> {
  String result="",getName="",getPass ="";
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();

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
                controller: n1,
                decoration: InputDecoration(
                labelText: "admin username",
                border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                  labelText: "admin password",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
              {
                getName=n1.text;
                getPass=n2.text;
                if(getName=="admin"&&getPass=="12345")
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>seclogin()));
                  }
else
  {
    setState(() {
      result="wrong username or password";
    });
  }
              }, child: Text("LOGIN")),
              Text(result,style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}

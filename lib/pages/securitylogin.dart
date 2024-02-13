import 'package:flutter/material.dart';
import 'package:securityapp/pages/addsec.dart';

class seclogin extends StatefulWidget {
  const seclogin({super.key});

  @override
  State<seclogin> createState() => _secloginState();
}

class _secloginState extends State<seclogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
                  {
Navigator.push(context, MaterialPageRoute(builder: (context)=>addsec()));
                  }, child: Text("ADD SECURITY")),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
              {

              }, child: Text("VIEW SECURITY")),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
              {

              }, child: Text("VIEW ALL VISITORS"))
            ],
          ),
        ),
      ),
    );
  }
}

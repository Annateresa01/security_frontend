import 'package:flutter/material.dart';
import 'package:securityapp/pages/adminlogin.dart';
import 'package:securityapp/pages/securitylogin.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome....."),

      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
                  {
Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));
                  }, child: Text("ADMIN LOGIN")),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
              {

              }, child: Text("SECURITY LOGIN"))
            ],
          ),
        ),
      ),
    );
  }
}

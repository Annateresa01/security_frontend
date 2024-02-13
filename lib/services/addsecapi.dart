
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:securityapp/models/addsec.dart';
class addsecapi
{


  Future<dynamic>loginApi(String email,String password) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/admin/signin");

    var response =await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type" : "application/json ; charset=UTF-8"
        },
        body: jsonEncode({
          "emailId": email,
          "password": password
        })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failed to send");
    }
  }


  Future<List<Admin>> getSec()async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/admin/view");
    
    var response=await client.get(apiurl);
    if (response.statusCode == 200)
      {
        return adminFromJson(response.body);
      }
    else
      {
        return [];
      }

  }
  Future<dynamic> addsecurities(String add1,add2,add3,add4,add5,add6)async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/admin/add");

    var response=await client.post(apiurl,headers:<String,String>{
    "Content-Type": "application/Json;charset=UTF-8 "
    },body: jsonEncode(<String,String>{
      "name":add1,
      "empId":add2,
      "adrs":add3,
      "phnNO":add4,
      "emailId":add5,
      "password":add6
    }));
    if(response.statusCode == 200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("FAILED");

    }
  
  }

}
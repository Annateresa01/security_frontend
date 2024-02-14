
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:securityapp/models/addvisit.dart';
class addvisitapi
{

  Future<List<Security>> getVisitor()async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/security/view");

    var response=await client.get(apiurl);
    if (response.statusCode == 200)
    {
      return securityFromJson(response.body);
    }
    else
    {
      return [];
    }

  }
  Future<dynamic> addVisitors(String add1,add2,add3)async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/security/addvisit");

    var response=await client.post(apiurl,headers:<String,String>{
      "Content-Type": "application/Json;charset=UTF-8 "
    },body: jsonEncode(<String,String>{
      "name":add1,
      "phnNo":add2,
      "purpose":add3
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
// To parse this JSON data, do
//
//     final admin = adminFromJson(jsonString);

import 'dart:convert';

List<Admin> adminFromJson(String str) => List<Admin>.from(json.decode(str).map((x) => Admin.fromJson(x)));

String adminToJson(List<Admin> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Admin {
  String name;
  String empId;
  String adrs;
  String phnNo;
  String emailId;
  String password;

  Admin({
    required this.name,
    required this.empId,
    required this.adrs,
    required this.phnNo,
    required this.emailId,
    required this.password,
  });

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
    name: json["name"],
    empId: json["empId"],
    adrs: json["adrs"],
    phnNo: json["phnNO"],
    emailId: json["emailId"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "empId": empId,
    "adrs": adrs,
    "phnNO": phnNo,
    "emailId": emailId,
    "password": password,
  };
}

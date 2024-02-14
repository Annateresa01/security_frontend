// To parse this JSON data, do
//
//     final security = securityFromJson(jsonString);

import 'dart:convert';

List<Security> securityFromJson(String str) => List<Security>.from(json.decode(str).map((x) => Security.fromJson(x)));

String securityToJson(List<Security> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Security {
  String name;
  String phnNo;
  String purpose;

  Security({
    required this.name,
    required this.phnNo,
    required this.purpose,
  });

  factory Security.fromJson(Map<String, dynamic> json) => Security(
    name: json["name"],
    phnNo: json["phnNo"],
    purpose: json["purpose"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "phnNo": phnNo,
    "purpose": purpose,
  };
}

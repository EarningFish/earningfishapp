// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String success;
  String errorCode;
  String message;
  Data data;

  Welcome({
    required this.success,
    required this.errorCode,
    required this.message,
    required this.data,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    success: json["success"],
    errorCode: json["error_code"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "error_code": errorCode,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  String mobile;
  String otp;
  String accountType;

  Data({
    required this.mobile,
    required this.otp,
    required this.accountType,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    mobile: json["mobile"],
    otp: json["otp"],
    accountType: json["account_type"],
  );

  Map<String, dynamic> toJson() => {
    "mobile": mobile,
    "otp": otp,
    "account_type": accountType,
  };
}

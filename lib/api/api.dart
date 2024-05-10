import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiServices {
  static const String baseUrl = "https://dashboard.earningfish.com/Api/";

  static Future otpRequest(String mobile) async {
    return ApiServices.postRequest(
        ApiServices.baseUrl + "send_otp", {"mobile_or_email": mobile,"flag":1,"type":2});
  }

  static Future verifyOtp(String otp,String mobile) async {
    return ApiServices.postRequest(
        ApiServices.baseUrl + "verify_otp", {"mobile_or_email": mobile,"otp":otp,"flag":1});
  }

  static postRequest(url, formData) async {
    try {
      var response = await Dio().post(url,
          data: formData,
          options: Options(
            headers: {
              HttpHeaders.contentTypeHeader:
                  'application/x-www-form-urlencoded',
              HttpHeaders.acceptHeader: "application/json",
            },
          ));
      return response.data;
    } on SocketException {
      return {"status": false, "message": "No Internet connection 😑"};
    } catch (e) {
      debugPrint(e.toString());
      return {"status": false, "message": "Connection Error 😑"};
    }
  }

  // static putRequestWithToken(url, formData) async {
  //   String token = await SharedPref.getUserToken();
  //
  //   try {
  //     var response = await Dio().put(url,
  //         data: formData,
  //         options: Options(
  //           headers: {
  //             'Content-Type': 'application/json',
  //             'Accept': 'application/json',
  //             'Authorization': 'Bearer $token',
  //           },
  //         ));
  //     return response.data;
  //   } on SocketException {
  //     return {"status": false, "message": "No Internet connection 😑"};
  //   } catch (e) {
  //     debugPrint(e.toString());
  //     return {"status": false, "message": "Connection Error 😑"};
  //   }
  // }
  //
  // static Future login({
  //   required String mobile,
  //   required String password,
  // }) async {
  //   const url = ApiServices.baseUrl + "api_login";
  //   final token = await getToken();
  //   var formData = {
  //     'mobile_no': mobile,
  //     'password': password,
  //     "firebase_id": token
  //   };
  //   print(formData.toString());
  //   return ApiServices.postRequest(url, FormData.fromMap(formData));
  // }
  //
  // static Future getUserData({
  //   required int customerId,
  // }) async {
  //   const url = ApiServices.baseUrl + "customer";
  //   return ApiServices.postRequestWithToken(
  //     url,
  //     FormData.fromMap(
  //       {
  //         "customer_id": customerId,
  //       },
  //     ),
  //   );
  // }

  // static Future updateUserData(
  //     {required int customerId,
  //     required String name,
  //     required String email,
  //     DateTime? dob,
  //     required String mobile,
  //     File? profilePic}) async {
  //   const url = ApiServices.baseUrl + "updateUser";
  //   String userProfileFile = "";
  //   String userProfileExtension = "";

  //   Map<String, dynamic> customerData = {
  //     "customer_id": customerId,
  //     "name": name,
  //     "email": email,
  //     "mobile": mobile,
  //   };
  //   if (profilePic != null) {
  //     userProfileFile = profilePic.path.split("/").last;
  //     userProfileExtension = profilePic.path.split(".").last;
  //     customerData["image"] = await MultipartFile.fromFile(profilePic.path,
  //         filename: userProfileFile,
  //         contentType: MediaType("image", userProfileExtension));
  //   }
  //   if (dob != null) {
  //     customerData["dob"] = dob;
  //   }
  //   return ApiServices.postRequestWithToken(
  //       url, FormData.fromMap(customerData));
  // }

}

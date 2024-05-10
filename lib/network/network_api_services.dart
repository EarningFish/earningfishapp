import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../helper/loading_manager.dart';
import '../api/base_api_services.dart';
import '../app_exceptions.dart';
import '../res/app_url.dart';
import '../view_model/sharePreference_viewmodel.dart';

class NetworkApiServices extends BaseApiServices {
  dynamic responseJson;
  Map<String, dynamic> responseJson1 ={};
  final String authToken = '';
  final LoadingManager _loadingManager = LoadingManager();
  String? token;

  NetworkApiServices() {
    _initToken();
  }
  Future<void> _initToken() async {
    token = await SharedPrefrenceViewModel.getToken();
  }
  Future<void> _ensureTokenIsInitialized() async {
    if (token == null) {
      await _initToken();
    }
  }

  @override
  Future getGetApiResponse(String url) async {
    await _ensureTokenIsInitialized();
    _loadingManager.setLoading(true);
    try {
      final response = await http.get(
        Uri.parse(AppUrl.BaseURL + url),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      responseJson = returnResponse(response);

      debugPrint(AppUrl.BaseURL + url);
      debugPrint(response.body.toString());
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } finally {
      _loadingManager.setLoading(false);
    }
    return responseJson;
  }

  //All data post
  @override
  Future<Map<String, dynamic>> getPostApiResponse(String url, dynamic data) async {
    print(data);
    Map<String, dynamic> responseJson;
    await _ensureTokenIsInitialized();
    _loadingManager.setLoading(true);
    try {
      http.Response response = await http
          .post(Uri.parse(AppUrl.BaseURL + url),
              headers: {
                'Content-type': 'application/json',
                'Authorization': 'Bearer $token',
              },
              body: json.encode(data))
          .timeout(const Duration(seconds: 50));
      responseJson = returnResponse(response);
      debugPrint(AppUrl.BaseURL + url);
      debugPrint(json.encode(data));
      debugPrint(response.body.toString());
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    finally {
      _loadingManager.setLoading(false);
    }
    return responseJson;
  }


  //post multipart data and images
  Future<Map<String, dynamic>> postMultipartApiResponse(String url,dynamic images, Map<String, String> data) async {
    Map<String, dynamic> responseJson;
    await _ensureTokenIsInitialized();
    _loadingManager.setLoading(true);
    try {
        var request = http.MultipartRequest(
          'POST',
          Uri.parse(AppUrl.BaseURL + url),
        );
        request.headers['Authorization'] = 'Bearer $token';
        request.fields.addAll(data);

       /* var stream = http.ByteStream(images.openRead());
        var length = await images.length();

        var multipartFile = http.MultipartFile(
          "profile_pic",
          stream,
          length,
          filename: images.path.split("/").last,
        );

        request.files.add(multipartFile);
*/
        if (images != null && images is File) {
          var stream = http.ByteStream(images.openRead());
          var length = await images.length();

          var multipartFile = http.MultipartFile(
            "profile_pic",
            stream,
            length,
            filename: images.path.split("/").last,
          );

          request.files.add(multipartFile);
        }
        debugPrint(AppUrl.BaseURL + url);
        debugPrint(json.encode(data));

        final response = await request.send().timeout(const Duration(seconds: 10));
        final responseString = await response.stream.bytesToString();
        responseJson = jsonDecode(responseString);

        debugPrint(AppUrl.BaseURL + url);
        debugPrint(responseString);

    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Request timed out');
    } catch (e) {
      throw Exception('An error occurred: $e');
    } finally {
      _loadingManager.setLoading(false);
    }
    return responseJson;
  }

  //only one image upload
  Future<Map<String, dynamic>> postDataResponse(String url,File file,String content) async {
    await _ensureTokenIsInitialized();
    _loadingManager.setLoading(true);
    try {
      if (file != null) {
        var request = http.MultipartRequest(
          'POST',
          Uri.parse(AppUrl.BaseURL + url),
        );
        request.headers['Authorization'] = 'Bearer $token';

        var stream = http.ByteStream(file.openRead());
        var length = await file.length();

        var multipartFile = http.MultipartFile(
          content,
          stream,
          length,
          filename: file.path.split("/").last,
        );

        request.files.add(multipartFile);

        final response = await request.send().timeout(
            const Duration(seconds: 15));
        final responseString = await response.stream.bytesToString();
        responseJson1 = jsonDecode(responseString);
        debugPrint(AppUrl.BaseURL + url);
        debugPrint(responseString);
        debugPrint('Images uploaded');
      }
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } finally {
      _loadingManager.setLoading(false);
    }
    return responseJson1;
  }
  //post multiple image upload
  Future<Map<String, dynamic>> postMultipleImagesResponse(
      String url, List<File?> files, String content) async {
    await _ensureTokenIsInitialized();
    _loadingManager.setLoading(true);
    try {
      final validFiles = files.where((file) => file != null).toList();

      if (validFiles.isNotEmpty) {
        var request = http.MultipartRequest(
          'POST',
          Uri.parse(AppUrl.BaseURL + url),
        );
        request.headers['Authorization'] = 'Bearer $token';

        for (var file in validFiles) {
          var stream = http.ByteStream(file!.openRead());
          var length = await file.length();

          var multipartFile = http.MultipartFile(
            content,
            stream,
            length,
            filename: file.path.split("/").last,
          );

          request.files.add(multipartFile);
        }

        final response = await request.send().timeout(
            const Duration(seconds: 10));
        final responseString = await response.stream.bytesToString();
        responseJson = jsonDecode(responseString);
        debugPrint(AppUrl.BaseURL + url);
        debugPrint(responseString);
        debugPrint('Images uploaded');
      }
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } finally {
      _loadingManager.setLoading(false);
    }
    return responseJson;
  }

  //delete
  Future deleteResponse(String url,dynamic data) async {
    dynamic deleteResponseJson;
    await _ensureTokenIsInitialized();
    _loadingManager.setLoading(true);
    try {
      final response = await http.delete(
        Uri.parse(AppUrl.BaseURL + url),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json'
        },
        body: json.encode(data),
      );
      print(data);
      deleteResponseJson = returnResponse(response);

      debugPrint(AppUrl.BaseURL + url);
      debugPrint(response.body.toString());
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } finally {
      _loadingManager.setLoading(false);
    }
    return deleteResponseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw BadRequestException(response.body.toString());
      case 500:
        throw BadRequestException(response.body.toString());
      default:
        throw FetchDataException(
            "Error accourded while communicating with server with status code ${response.statusCode}");
    }
  }
}


abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(String url);

  Future<Map<String, dynamic>> getGetAPIResponse(String url) async {
    return await getGetAPIResponse(url);
  }

  Future<dynamic> getPostApiResponse(
      String url, dynamic data);
}

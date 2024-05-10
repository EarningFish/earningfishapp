import '../api/api_endpoints.dart';
import '../network/network_api_services.dart';

class LoginRepository {
  final NetworkApiServices _apiServices = NetworkApiServices();

  @override
  Future<dynamic> login(dynamic data) async {
    try {
      dynamic response =
      await _apiServices.getPostApiResponse(ApiEndPoints().login, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
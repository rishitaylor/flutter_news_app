import 'package:dio/dio.dart';

class Networking {
  final Dio dio = Dio();

  Future<dynamic> get(String endPoint, {String? token}) async {
    try {
      var response = await dio.get(buildUrl(endPoint).toString(),
          options: Options(headers: {
            "Content-Type": "application/json",
            if (token != null) "Authorization": "Bearer $token"
          }));
      if (response.statusCode == 200) {
        return response.data;
      }
      // Assuming response.data contains the body
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      // Handle Dio errors (e.g., network errors, status codes)
      if (e.response?.statusCode == 401) {
        throw Exception("Unauthorized Access");
      } else {
        throw Exception("Network Error: ${e.message}");
      } // Pass error forward for now
    }
  }

  static Uri buildUrl(String endPoint,
      {String baseUrl = 'https://newsapi.org/v2/',
      String apiKey = '&apiKey=f30d2968caee4038bb57168be220ffcd'}) {
    final apiPath = baseUrl + endPoint + apiKey;
    return Uri.parse(apiPath);
  }
}

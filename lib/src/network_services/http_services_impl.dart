import 'dart:convert';
import 'package:http/http.dart' as http;

import '../home/data/models/http_models/http_error_responses.dart';
import 'http_services.dart';

class HttpServiceRequests implements HttpService {
  @override
  Future<dynamic> get(String uri) async {
    dynamic responseJson;

    try {
      final url = Uri.parse(uri);
      final response = await http.get(
        url,
      );
      responseJson = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return responseJson;
      } else if (500 <= response.statusCode && response.statusCode <= 599) {
        return unavailableResponse;
      } else {
        return responseJson;
      }
    } catch (e) {
      return responseJson;
    }
  }

  @override
  Future<dynamic> post(String uri, Map<String, dynamic> params) async {
    dynamic responseJson;

    try {
      final url = Uri.parse(uri);

      final response = await http.post(url, body: jsonEncode(params));
      responseJson = jsonDecode(response.body);
      // print(response);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return responseJson;
      } else if (500 <= response.statusCode && response.statusCode <= 599) {
        return unavailableResponse;
      } else {
        return responseJson;
      }
    } catch (e) {
      return responseJson;
    }
  }
}

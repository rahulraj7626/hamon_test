abstract class HttpService {
  Future<dynamic> get(String uri);
  Future<dynamic> post(String uri, Map<String, dynamic> params);
}

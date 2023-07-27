import '../../../network_services/http_services.dart';
import '../../../network_services/http_services_impl.dart';
import '../../data/datasources/api_endpoints.dart';

class StudentsRepository {
  late HttpService _httpService;
  StudentsRepository() {
    _httpService = HttpServiceRequests();
  }
  Future<dynamic> getStudents() async {
    return await _httpService.get(StudentApis.getStudents);
  }
}

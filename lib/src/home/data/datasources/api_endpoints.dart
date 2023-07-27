import '../../../app_config/api_config.dart';

class StudentApis {
  static String baseApi = ApiConfig.baseUrl;
  static String apiKey = ApiConfig.key;
  static String getStudents = '${baseApi}students$apiKey';
  static String getClassRooms = '${baseApi}classrooms$apiKey';
  static String getSubjects = '${baseApi}subjects$apiKey';
}

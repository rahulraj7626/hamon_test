import 'package:json_annotation/json_annotation.dart';

import 'student_model.dart';
part 'student_response.g.dart';

@JsonSerializable()
class StudentResponseModel {
  @JsonKey(defaultValue: [])
  final List<StudentModel> students;

  StudentResponseModel(this.students);
  factory StudentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StudentResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$StudentResponseModelToJson(this);
}

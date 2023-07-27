// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentResponseModel _$StudentResponseModelFromJson(
        Map<String, dynamic> json) =>
    StudentResponseModel(
      (json['students'] as List<dynamic>?)
              ?.map((e) => StudentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StudentResponseModelToJson(
        StudentResponseModel instance) =>
    <String, dynamic>{
      'students': instance.students,
    };

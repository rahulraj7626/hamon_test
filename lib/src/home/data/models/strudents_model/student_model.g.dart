// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) => StudentModel(
      json['age'] as int?,
      json['email'] as String,
      json['id'] as int?,
      json['name'] as String,
    );

Map<String, dynamic> _$StudentModelToJson(StudentModel instance) =>
    <String, dynamic>{
      'age': instance.age,
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
    };

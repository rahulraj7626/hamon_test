import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamon_test/src/home/presentation/bloc/subject_bloc.dart';

import '../home/domain/repositories/students_repository.dart';
import '../home/presentation/bloc/student_bloc.dart';

final providerList = [
  BlocProvider<StudentBloc>(
      create: (context) => StudentBloc(StudentsRepository())),
  BlocProvider<SubjectBloc>(
      create: (context) => SubjectBloc(StudentsRepository())),
  BlocProvider<ClassroomBloc>(
      create: (context) => ClassroomBloc(StudentsRepository())),
];

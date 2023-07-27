import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/domain/repositories/students_repository.dart';
import '../home/presentation/bloc/student_bloc.dart';

final providerList = [
  BlocProvider<StudentBloc>(
      create: (context) => StudentBloc(StudentsRepository())),
];

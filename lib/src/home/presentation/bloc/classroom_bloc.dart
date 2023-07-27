import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamon_test/src/home/domain/repositories/students_repository.dart';

import '../../data/models/error_models/error_model.dart';
import '../../data/models/http_models/http_error_responses.dart';
import 'student_bloc.dart';

class ClassroomBloc extends Bloc<StudentEvent, StudentState> {
  final StudentsRepository studentRepo;
  ClassroomBloc(this.studentRepo) : super(StudentInitialState()) {
    on(eventHandler);
  }

  FutureOr<void> eventHandler(
      StudentEvent event, Emitter<StudentState> emit) async {
    if (event is GetStudentEvent) {
      emit(StudentLoadingState());
      await studentRepo.getStudents().then(
        (value) {
          if (value != null) {
            successLogin(emit, value);
          } else {
            emit(ErrorState(ErrorModel.fromJson(errorResponse)));
          }
        },
      );
    }
  }
}

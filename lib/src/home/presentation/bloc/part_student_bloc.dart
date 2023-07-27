part of 'student_bloc.dart';

void errorLogin(Emitter<StudentState> emit, value) {
  final response = ErrorModel.fromJson(value);
  emit(ErrorState(response));
}

void successLogin(Emitter<StudentState> emit, value) {
  emit(StudentLoadedState());
}

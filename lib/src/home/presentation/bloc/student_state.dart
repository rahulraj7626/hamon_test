part of 'student_bloc.dart';

abstract class StudentState extends Equatable {
  const StudentState();

  @override
  List<Object> get props => [];
}

class StudentInitialState extends StudentState {}

class StudentLoadingState extends StudentState {}

class StudentLoadedState extends StudentState {}

class ErrorState extends StudentState {
  final ErrorModel response;

  const ErrorState(this.response);
  @override
  List<Object> get props => [response];
}

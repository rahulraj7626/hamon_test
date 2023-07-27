part of 'student_bloc.dart';

abstract class StudentState extends Equatable {
  const StudentState();

  @override
  List<Object> get props => [];
}

class StudentInitialState extends StudentState {}

class StudentLoadingState extends StudentState {}

class StudentLoadedState extends StudentState {
  final StudentResponseModel responseData;

  const StudentLoadedState({required this.responseData});
}

class ErrorState extends StudentState {
  final ErrorModel response;

  const ErrorState(this.response);
  @override
  List<Object> get props => [response];
}
//Subject states

class SubjectLoadingState extends StudentState {}

class SubjectLoadedState extends StudentState {
  final StudentResponseModel responseData;

  const SubjectLoadedState({required this.responseData});
}

class SubjectErrorState extends StudentState {
  final ErrorModel response;

  const SubjectErrorState(this.response);
  @override
  List<Object> get props => [response];
}

//Class room states

class ClassLoadingState extends StudentState {}

class ClassLoadedState extends StudentState {
  final StudentResponseModel responseData;

  const ClassLoadedState({required this.responseData});
}

class ClassErrorState extends StudentState {
  final ErrorModel response;

  const ClassErrorState(this.response);
  @override
  List<Object> get props => [response];
}

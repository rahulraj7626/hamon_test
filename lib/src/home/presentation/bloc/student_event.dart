part of 'student_bloc.dart';

abstract class StudentEvent extends Equatable {
  const StudentEvent();

  @override
  List<Object> get props => [];
}

class GetStudentEvent extends StudentEvent {}

class GetClassRoomEvent extends StudentEvent {}

class GetSubjectEvent extends StudentEvent {}

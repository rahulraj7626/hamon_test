// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:hamon_test/src/home/data/models/strudents_model/student_model.dart'
    as _i6;
import 'package:hamon_test/src/home/presentation/pages/student_screens/detail_screen.dart'
    as _i3;
import 'package:hamon_test/src/home/presentation/pages/student_screens/students_screen.dart'
    as _i1;
import 'package:hamon_test/src/home/presentation/pages/subject_screens/subject_screen.dart'
    as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    StudentScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.StudentScreen(),
      );
    },
    SubjectScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SubjectScreen(),
      );
    },
    StudentDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<StudentDetailScreenRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.StudentDetailScreen(
          key: args.key,
          student: args.student,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.StudentScreen]
class StudentScreenRoute extends _i4.PageRouteInfo<void> {
  const StudentScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          StudentScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SubjectScreen]
class SubjectScreenRoute extends _i4.PageRouteInfo<void> {
  const SubjectScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SubjectScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubjectScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.StudentDetailScreen]
class StudentDetailScreenRoute
    extends _i4.PageRouteInfo<StudentDetailScreenRouteArgs> {
  StudentDetailScreenRoute({
    _i5.Key? key,
    required _i6.StudentModel student,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          StudentDetailScreenRoute.name,
          args: StudentDetailScreenRouteArgs(
            key: key,
            student: student,
          ),
          initialChildren: children,
        );

  static const String name = 'StudentDetailScreenRoute';

  static const _i4.PageInfo<StudentDetailScreenRouteArgs> page =
      _i4.PageInfo<StudentDetailScreenRouteArgs>(name);
}

class StudentDetailScreenRouteArgs {
  const StudentDetailScreenRouteArgs({
    this.key,
    required this.student,
  });

  final _i5.Key? key;

  final _i6.StudentModel student;

  @override
  String toString() {
    return 'StudentDetailScreenRouteArgs{key: $key, student: $student}';
  }
}

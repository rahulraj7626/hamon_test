import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hamon_test/src/home/presentation/widgets/student_widgets.dart';

import '../../../data/models/strudents_model/student_model.dart';

@RoutePage()
class StudentDetailScreen extends StatelessWidget {
  final StudentModel student;
  const StudentDetailScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),
            ),
          ),
          headerWidget(student.name),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: subTitleWidget(student.email),
          ),
          subTitleWidget('Age: ${student.age}')
        ]),
      ),
    );
  }
}

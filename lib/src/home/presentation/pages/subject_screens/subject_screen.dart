import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamon_test/src/home/presentation/bloc/subject_bloc.dart';

import '../../../../utils/toast_widget.dart';
import '../../../data/models/strudents_model/student_model.dart';
import '../../bloc/student_bloc.dart';
import '../../widgets/student_widgets.dart';

@RoutePage()
class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text(
            "Students",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: BlocBuilder(
                bloc: BlocProvider.of<SubjectBloc>(context)
                  ..add(GetStudentEvent()),
                builder: (BuildContext context, StudentState state) {
                  if (state is ErrorState) {
                    AppToast.showToast(state.response.message[0]);
                  }
                  if (state is StudentLoadedState) {
                    return listViewWidget(state.responseData.students);
                  }

                  if (state is StudentLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return SizedBox();
                }),
          )
        ]),
      ),
    );
  }

  Widget listViewWidget(List<StudentModel> studentList) {
    return studentList.isEmpty
        ? Center(child: titleWidget("No students found"))
        : ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: studentList.length,
            itemBuilder: ((context, index) {
              var item = studentList[index];
              return Container(
                alignment: Alignment.center,
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 30,
                      child: const Icon(
                        Icons.person,
                        size: 35,
                      )),
                  title: titleWidget(item.name),
                  subtitle: subTitleWidget(item.email),
                ),
              );
            }));
  }
}

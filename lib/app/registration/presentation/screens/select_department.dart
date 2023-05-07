import 'package:flutter/material.dart';
import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/presentation/presentation.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: add school property for go_router params
class SelectDepartmentPage extends StatelessWidget {
  const SelectDepartmentPage({super.key, required this.school});
  final String school;
  @override
  Widget build(BuildContext context) {
    return ScaffoldForSelectionList(
        title: 'Select Department',
        child: SelectionListScreen(
          listItems: listOfNahpiDepartments,
          path: Routes.selectOption,
          params: {'school': school},
          paramType: 'department',
        ));
  }
}

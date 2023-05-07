import 'package:flutter/material.dart';
import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/registration.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: add school property for go_router params
class SelectOptionPage extends StatelessWidget {
  const SelectOptionPage(
      {super.key, required this.school, required this.department});
  final String school;
  final String department;

  @override
  Widget build(BuildContext context) {
    late List<Option> listOfOptions;
    try {
      listOfOptions = listOfSchools
          .firstWhere((element) => element.name.toLowerCase() == school)
          .departments
          .firstWhere((element) => element.name.toLowerCase() == department)
          .options;
    } catch (err) {
      listOfOptions = [];
    }
    return ScaffoldForSelectionList(
        title: 'Select Option',
        child: SelectionListScreen(
          listItems: listOfOptions,
          path: Routes.selectYear,
          params: {'school': school, 'department': department},
          paramType: 'option',
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/presentation/presentation.dart';
import 'package:school_docs/utils/utils.dart';

class SelectOptionPage extends StatelessWidget {
  const SelectOptionPage(
      {super.key, required this.school, required this.department});
  final String school;
  final String department;

  @override
  Widget build(BuildContext context) {
    return ScaffoldForSelectionList(
        title: 'Select Option',
        child: SelectionListScreen(
          listItems: listOfColtechCenOptions,
          path: Routes.selectYear,
          params: {'school': school, 'department': department},
          paramType: 'option',
        ));
  }
}

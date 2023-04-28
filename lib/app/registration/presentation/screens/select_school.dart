import 'package:flutter/material.dart';
import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/presentation/presentation.dart';
import 'package:school_docs/utils/utils.dart';

class SelectSchoolPage extends StatelessWidget {
  const SelectSchoolPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldForSelectionList(
        title: 'Select School',
        child: SelectionListScreen(
          listItems: listOfSchools,
          path: Routes.selectDepartment,
          paramType: 'school',
        ));
  }
}

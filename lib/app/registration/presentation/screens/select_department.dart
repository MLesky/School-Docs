import 'package:flutter/material.dart';
import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/presentation/presentation.dart';
import 'package:school_docs/utils/utils.dart';


// TODO: add school property for go_router params
class SelectDepartmentPage extends StatelessWidget {
  const SelectDepartmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldForSelectionList(title: 'Select Department',
        child: SelectionListScreen(listItems: listOfDepartments, path: Routes.selectOption,));
  }
}

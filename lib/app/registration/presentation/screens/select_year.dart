import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:school_docs/app/registration/presentation/presentation.dart';
import 'package:school_docs/app/registration/providers/providers.dart';
import 'package:school_docs/utils/utils.dart';

class SelectYearPage extends StatefulWidget {
  const SelectYearPage({super.key, required this.school, required this.department, required this.option});
  final String school;
  final String department;
  final String option;

  @override
  State<SelectYearPage> createState() => _SelectYearPageState();
}

class _SelectYearPageState extends State<SelectYearPage> {
  int selectedYear = 0;

  void changeYear(value) {
    setState(() {
      selectedYear = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldForSelectionList(
        title: 'Select Year of Studies',
        child: ListView(
            children: [
          Card(
              child: RadioListTile(
            value: 1,
            groupValue: selectedYear,
            onChanged: changeYear,
            title: const Text('Year 1'),
            selected: selectedYear == 1,
            selectedTileColor: Theme.of(context).unselectedWidgetColor,
            activeColor: Theme.of(context).focusColor,
          )),
          Card(
              child: RadioListTile(
                value: 2,
                groupValue: selectedYear,
                onChanged: changeYear,
                title: const Text('Year 2'),
                selected: selectedYear == 2,
                selectedTileColor: Theme.of(context).unselectedWidgetColor,
                activeColor: Theme.of(context).focusColor,
              )),
          Card(
              child: RadioListTile(
                value: 3,
                groupValue: selectedYear,
                onChanged: changeYear,
                title: const Text('Year 3'),
                selected: selectedYear == 3,
                selectedTileColor: Theme.of(context).unselectedWidgetColor,
                activeColor: Theme.of(context).focusColor,
              )),
          Card(
              child: RadioListTile(
                value: 4,
                groupValue: selectedYear,
                onChanged: changeYear,
                title: const Text('Year 4'),
                selected: selectedYear == 4,
                selectedTileColor: Theme.of(context).unselectedWidgetColor,
                activeColor: Theme.of(context).focusColor,
              )),
          Card(
              child: RadioListTile(
                value: 5,
                groupValue: selectedYear,
                onChanged: changeYear,
                title: const Text('Year 5'),
                selected: selectedYear == 5,
                selectedTileColor: Theme.of(context).unselectedWidgetColor,
                activeColor: Theme.of(context).focusColor,
              )),
          VerticalSpacings.xxl,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<StudentProvider>(
                builder: (context, studentProvider, child) => ElevatedButton.icon(
                    onPressed: () {
                      if (selectedYear == 0) {
                        ScaffoldMessenger.of(context).removeCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please Select a Year First')));
                      } else {
                        while(context.canPop()){
                          context.pop();
                        }
                        studentProvider.setSchool =  widget.school.toTitleCase();
                        studentProvider.setDepartment = widget.department.toTitleCase();
                        studentProvider.setOption = widget.option.toTitleCase();
                        studentProvider.setYear = selectedYear;
                        studentProvider.saveStudentInfo();
                        context.pushReplacementNamed(Routes.home);
                      }
                    },
                    label: const Text('Start Reading'),
                    icon: const Icon(Icons.read_more)),
              ),
            ],
          )
        ]));
  }
}

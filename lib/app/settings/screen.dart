import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkTheme = false;
  String school = 'College Of Technology';
  String schAbb = 'Coltech';
  String department = 'Computer Engineering';
  String depAbb = 'CEN';
  String option = 'Software Engineering';
  String optAbb = 'SWE';
  int year = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Spacings.sm, horizontal: Spacings.xs),
        child: ListView(
          children: [
            Card(
              child: SwitchListTile(
                title: const Text('Dark Theme'),
                  value: isDarkTheme,
                  onChanged: (value) {
                    setState(() {
                      isDarkTheme = value;
                    });
                  }),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(Spacings.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Table(
                      children: [
                        TableRow(
                          children: [
                            TableCell(child: Text('School', style: Theme.of(context).textTheme.titleSmall,),),
                            TableCell(child: Text('$school ($schAbb)', style: Theme.of(context).textTheme.titleSmall,),),
                          ],
                        ),
                        TableRow(
                            children: [
                              TableCell(child: Text('Department', style: Theme.of(context).textTheme.titleSmall,),),
                              TableCell(child: Text('$department ($depAbb)', style: Theme.of(context).textTheme.titleSmall,),),
                            ]
                        ),
                        TableRow(
                            children: [
                              TableCell(child: Text('Option', style: Theme.of(context).textTheme.titleSmall,),),
                              TableCell(child: Text('$option ($optAbb)', style: Theme.of(context).textTheme.titleSmall,),),
                            ]
                        ),
                        TableRow(
                            children: [
                              TableCell(child: Text('Year', style: Theme.of(context).textTheme.titleSmall,),),
                              TableCell(child: Text('Year $year', style: Theme.of(context).textTheme.titleSmall,),),
                            ]
                        ),
                      ],
                    ),
                    VerticalSpacings.md,
                    TextButton.icon(onPressed: (){context.pushNamed(Routes.selectSchool);}, icon: const Icon(Icons.edit), label: const Text('Change')),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

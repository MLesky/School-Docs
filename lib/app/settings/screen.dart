import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:school_docs/themes/theme.dart';
import 'package:school_docs/utils/utils.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkTheme = false;
  bool isDownloadOnly = false;
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
        title: const Text(kAppName),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Spacings.sm, horizontal: Spacings.xs),
        child: ListView(
          children: [
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
            ),
            Card(
              child: Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) => SwitchListTile(
                  activeColor: Theme.of(context).focusColor,
                    title: const Text('Dark Theme'),
                    value: themeProvider.isDarkMode,
                    onChanged: (value) => themeProvider.swapTheme()),
              ),
            ),
            Card(
              child: SwitchListTile(
                  title: const Text('Download only over WiFi'),
                  activeColor: Theme.of(context).focusColor,
                  value: isDownloadOnly,
                  onChanged: (value) {
                    setState(() {
                      isDownloadOnly = value;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

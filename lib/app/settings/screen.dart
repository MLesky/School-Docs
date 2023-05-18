import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:school_docs/app/registration/providers/providers.dart';
import 'package:school_docs/themes/theme.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: fix resetting to initial route on hot reload and swapping the theme
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDownload = false;
    var student = context.watch<StudentProvider>();
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
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(Spacings.sm),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'SCHOOL',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  student.school,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(Spacings.sm),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'DEPARTMENT',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  student.department,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(Spacings.sm),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'OPTION',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  student.option,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(Spacings.sm),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'LEVEL',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Year ${student.year}',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalSpacings.sm,
                      TextButton.icon(
                          onPressed: () {
                            context.pushNamed(Routes.selectSchool);
                          },
                          icon: const Icon(Icons.edit),
                          label: const Text('Change')),
                    ],
                  )),
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
              child: StatefulBuilder(
                builder: (context, setState) => SwitchListTile(
                    title: const Text('Download only over WiFi'),
                    activeColor: Theme.of(context).focusColor,
                    value: isDownload,
                    onChanged: (value) {
                      setState(() => isDownload = value);
                    }),
              ),
            ),
            Card(
              child: ListTile(
                  title: const Text('About School Docs'),
                  onTap: () {
                    showAboutDialog(
                      context: context,
                      applicationIcon: Image.asset(
                        Assets.logoIconPrimary,
                        width: 50,
                        height: 50,
                      ),
                      applicationName: kAppName,
                      useRootNavigator: false,
                      applicationVersion: '1.0',
                      children: [
                        const Text(
                          'Access and read your school docs in one place\n',
                        ),
                        const Text(
                            '- Mbah Lesky\n'
                            '- Add your name'),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 720) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerticalSpacings.xxl,
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        Assets.logoPrimary,
                        width: 70,
                        color: Theme.of(context).dividerColor,
                      ),
                      VerticalSpacings.xs,
                      Text(
                        kAppName,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
                VerticalSpacings.xl,
                Expanded(
                  child: SvgPicture.asset(
                    Assets.imagesReading,
                    width: 300,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: Spacings.sm, horizontal: Spacings.md),
                    child: Text(
                        'Access and read your school documents and files in one place',
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
                VerticalSpacings.xxl,
                ElevatedButton.icon(
                    onPressed: () {
                      context.pushNamed(Routes.selectSchool);
                      print(GoRouter.of(context).location);
                    },
                    icon: const Icon(Icons.send),
                    label: const Text('Get Started')),
                VerticalSpacings.xxl,
              ],
            );
          }
          else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children:  [
                      HorizontalSpacings.sm,
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: SvgPicture.asset(
                                Assets.imagesReading,
                                width: 300,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: Spacings.lg),
                              child: Text(
                                  'Access and read your school documents and files in one place',
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyMedium),
                            ),
                            VerticalSpacings.xl,
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                  Assets.logoPrimary,
                                  width: 70,
                                  color: Theme.of(context).dividerColor,
                                ),
                                VerticalSpacings.xs,
                                Text(
                                  kAppName,
                                  style: Theme.of(context).textTheme.headlineLarge,
                                ),
                              ],
                            ),
                            VerticalSpacings.lg,
                            ElevatedButton.icon(
                                onPressed: () {
                                  context.pushNamed(Routes.selectSchool);
                                  print(GoRouter.of(context).location);
                                },
                                icon: const Icon(Icons.send),
                                label: const Text('Get Started')),
                            VerticalSpacings.lg,
                          ],
                        ),
                      ),
                      HorizontalSpacings.sm,
                    ],
                  ),
                ),
              ],
            );
          }
        },
      )
    );
  }
}
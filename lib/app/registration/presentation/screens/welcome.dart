import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

/// TODO: Make the [WelcomeScreen] responsive (add layout builder)
/// TODO: Arrange color of [Logo]
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: VerticalSpacings.xxl),
          Column(
            children: [
              SvgPicture.asset(
                Assets.logoPrimary,
                width: 70,
              ),
              VerticalSpacings.xs,
              Text(
                kAppName,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
          VerticalSpacings.xl,
          SvgPicture.asset(
            Assets.imagesReading,
            width: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
                'Access and read your school document.dart and files in one place',
                textScaleFactor: 1.2,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          VerticalSpacings.xxl,
          ElevatedButton.icon(
              onPressed: () {
                context.pushNamed(Routes.selectSchool);
                print(GoRouter.of(context).location);
              },
              icon: const Icon(Icons.send),
              label: const Text('Get Started')),
          const Expanded(child: VerticalSpacings.xxl),
        ],
      ),
    );
  }
}

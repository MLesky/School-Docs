import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: fix logo on scaffold
// TODO: fix shell route not working
class RegistrationPageScaffold extends StatelessWidget {
  const RegistrationPageScaffold({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(Assets.logoWhite),
        title: const Text(kAppName),
      ),
      body: child,
    );
  }
}

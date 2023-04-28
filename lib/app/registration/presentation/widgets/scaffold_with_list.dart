import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class ScaffoldForSelectionList extends StatelessWidget {
  const ScaffoldForSelectionList(
      {super.key, required this.child, required this.title});
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          title,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('You clicked the refresh button');
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            Spacings.sm, Spacings.md, Spacings.sm, Spacings.xxl),
        child: child,
      ),
    );
  }
}

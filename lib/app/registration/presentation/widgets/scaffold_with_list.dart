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
        title: const Text(kAppName),
        centerTitle: true,
        actions: [
          StatefulBuilder(
              builder: (context, setState){
             return IconButton(
               onPressed: () {setState(() {});},
               icon: const Icon(Icons.refresh),
             );
          })
        ],
      ),
      body: Scaffold(
        appBar: AppBar(title: Text(title, style: Theme.of(context).textTheme.bodyLarge,), backgroundColor: Theme.of(context).cardColor, automaticallyImplyLeading: false, toolbarHeight: 40,),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(
              Spacings.sm, Spacings.md, Spacings.sm, Spacings.sm),
          child: child,
        ),
      ),
    );
  }
}

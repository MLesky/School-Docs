import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:school_docs/app/registration/presentation/presentation.dart';

// TODO: implement display for no items found

class SelectionListScreen extends StatelessWidget {
  const SelectionListScreen(
      {super.key, required this.listItems, required this.path});

  final List listItems;
  final String path;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1))
            .then((schools) => listItems),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: SpinKitRing(
                  color: Theme.of(context).primaryColor,
                ));
          } else {
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return ListCardItem(
                      path: path,
                      titleText: snapshot.data![index].name,
                      subTitleText:
                      snapshot.data![index]?.abbreviation ?? 'bn');
                });
          }
        });
  }
}

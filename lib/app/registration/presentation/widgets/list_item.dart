import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class ListCardItem extends StatelessWidget {
  const ListCardItem(
      {super.key, required this.titleText, required this.subTitleText, required this.path});
  final String titleText;
  final String subTitleText;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(titleText, style: const TextStyle(
          overflow: TextOverflow.ellipsis)
        ),
        subtitle: Text(subTitleText),
        onTap: () {
          context.pushNamed(path);
        },
      ),
    );
  }
}

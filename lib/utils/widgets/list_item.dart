import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListCardItem extends StatelessWidget {
  const ListCardItem(
      {super.key, required this.titleText, required this.subTitleText, required this.path, required this.params, required this.paramType});
  final String titleText;
  final String subTitleText;
  final String path;
  final String paramType;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    var tempParams = {...params, paramType : titleText.toLowerCase()};

    return Card(
      child: ListTile(
        title: Text(titleText, style: const TextStyle(
          overflow: TextOverflow.ellipsis)
        ),
        subtitle: Text(subTitleText),
        onTap: () {
          print(GoRouter.of(context).location);
          print(tempParams);
          context.pushNamed(path, params: tempParams);
        },
      ),
    );
  }
}

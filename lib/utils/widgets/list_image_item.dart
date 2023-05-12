import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class ListBookCardItem extends StatelessWidget {
  const ListBookCardItem(
      {super.key,
        required this.titleText,
        required this.subTitleText,
        required this.bookPath,
        required this.params,
        required this.paramType,
        required this.image});
  final String titleText;
  final String subTitleText;
  final String bookPath;
  final String paramType;
  final String image;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    var tempParams = {...params, 'docPath': bookPath, paramType: titleText.toLowerCase()};

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Spacings.xs),
        child: ListTile(
          leading: Image.asset(image,),
          title: Text(titleText),
          subtitle: Text(subTitleText),
          onTap: () {
            print(GoRouter.of(context).location);
            print(tempParams);
            context.pushNamed(Routes.reading, params: tempParams);
          },
        ),
      ),
    );
  }
}

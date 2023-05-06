import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class GridBookCardItem extends StatelessWidget {
  const GridBookCardItem(
      {super.key,
      required this.titleText,
      required this.subTitleText,
      required this.path,
      required this.params,
      required this.paramType});
  final String titleText;
  final String subTitleText;
  final String path;
  final String paramType;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    var tempParams = {...params, paramType: titleText.toLowerCase()};

    return GestureDetector(
      onTap: () {
        print(GoRouter.of(context).location);
        print(tempParams);
        context.pushNamed(path, params: tempParams);
      },
      child: SizedBox(
        height: 300,
        width: 175,
        child: Card(
          child: Padding(
              padding: const EdgeInsets.all(Spacings.xs),
              child: Column(
                children: [
                  Image.asset(
                    Assets.bookCover,
                    height: 200,
                  ),
                  VerticalSpacings.xs,
                  Text(titleText, overflow: TextOverflow.ellipsis, maxLines: 2, style: Theme.of(context).textTheme.bodyLarge,),
                  const Divider(),
                  Text(subTitleText, style: Theme.of(context).textTheme.bodySmall,),
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class GridBookCardItem extends StatelessWidget {
  const GridBookCardItem(
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

    return MaterialButton(
      onPressed: () {
        print(GoRouter.of(context).location);
        print(tempParams);
        context.pushNamed(Routes.reading, params: tempParams);
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
                    image,
                    height: 200,
                  ),
                  VerticalSpacings.xs,
                  Text(
                    titleText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Divider(),
                  Text(
                    subTitleText,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

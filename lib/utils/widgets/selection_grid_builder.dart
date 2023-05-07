import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_docs/utils/utils.dart';

class SelectionGridScreen extends StatelessWidget {
  const SelectionGridScreen({
    super.key,
    required this.listItems,
    required this.path,
    this.params = const {},
    required this.paramType,
  });

  final List listItems;
  final String path;
  final String paramType;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1))
            .then((schools) => listItems),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: SpinKitFadingFour(
              color: Theme.of(context).dividerColor,
            ));
          } else if (snapshot.data!.isEmpty) {
            return Center(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Spacings.lg),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          Assets.imagesEmpty,
                          width: 300,
                        ),
                        VerticalSpacings.md,
                        Text('Nothing Found\nTry refreshing',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return ListView(
              children: [
                Center(
                  child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: Spacings.xs,
                      runSpacing: Spacings.xs,
                      children: [
                    ...snapshot.data!
                        .map((item) => GridBookCardItem(
                              params: params,
                              path: path,
                              titleText: item.title,
                              subTitleText: item.lecturersName ?? 'bn',
                              paramType: paramType,
                            ))
                        .toList(),
                        VerticalSpacings.md,
                  ]),
                ),
              ],
            );
          }
        });
  }
}

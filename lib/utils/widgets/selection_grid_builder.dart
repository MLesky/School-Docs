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
    this.seconds = 1,
  });

  final List listItems;
  final String path;
  final String paramType;
  final Map<String, String> params;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: seconds))
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
            return Wrap(
                    alignment: WrapAlignment.start,
                    spacing: Spacings.xs,
                    runSpacing: Spacings.xs,
                    children: [
                  ...snapshot.data!
                      .map((item) => GridBookCardItem(
                            params: params,
                            bookPath: item.pdfPath,
                            titleText: item.title,
                            subTitleText: item.lecturersName ?? 'bn',
                            paramType: paramType,
                            image: item.coverImagePath,
                          ))
                      .toList(),
                      VerticalSpacings.md,
                ]);
          }
        });
  }
}

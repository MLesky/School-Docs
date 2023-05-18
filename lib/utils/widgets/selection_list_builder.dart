import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: implement display for no items found

class SelectionListScreen extends StatelessWidget {
  const SelectionListScreen(
      {super.key,
      required this.listItems,
      required this.path,
      this.params = const {},
      required this.paramType,
      this.useNormalCardItem = true, this.seconds = 1});

  final List listItems;
  final String path;
  final String paramType;
  final bool useNormalCardItem;
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
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  if(useNormalCardItem) {
                    return ListCardItem(
                      params: params,
                      path: path,
                      titleText: snapshot.data![index].name,
                      subTitleText: snapshot.data![index]?.abbreviation ?? 'bn',
                      paramType: paramType,
                    );
                  } else {
                    return ListBookCardItem(
                      params: params,
                      bookPath: snapshot.data![index].pdfPath,
                      titleText: snapshot.data![index].title,
                      subTitleText: snapshot.data![index]?.lecturersName ?? 'bn',
                      paramType: paramType,
                      image: snapshot.data![index].coverImagePath,
                    );
                  }
                });
          }
        });
  }
}

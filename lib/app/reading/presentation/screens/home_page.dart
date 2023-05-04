import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/app/reading/reading.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: SVG icon color

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 //   redirectIfNotRegistered(context);
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(kAppName),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(Spacings.sm, 0, 0, 0),
              child: SvgPicture.asset(
                Assets.logoWhite,
                color: Colors.white,
              ),
            ),
            leadingWidth: 50,
            actions: [
              IconButton(
                onPressed: () {
                  print('You clicked the refresh button');
                },
                icon: const Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () {
                  context.goNamed(Routes.settings);
                },
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Theme.of(context).focusColor,
              tabs: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('1st Sem'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('2st Sem'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('3st Sem'),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: Spacings.sm, horizontal: Spacings.xs),
            child: TabBarView(children: [
              const SelectionListScreen(
                listItems: [],
                path: '',
                paramType: '',
              ),
              SelectionListScreen(
                listItems: listOfColtechCenYear2Sem1Courses,
                path: Routes.documents,
                paramType: 'course',
              ),
              const SelectionListScreen(
                listItems: [],
                path: '',
                paramType: '',
              ),
            ]),
          )
        ));
  }
}

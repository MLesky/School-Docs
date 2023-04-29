import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: SVG icon color

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
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
            bottom: const TabBar(
              tabs: [
                Text('1st Sem'),
                Text('2st Sem'),
                Text('3st Sem'),
                Text('4st Sem'),
              ],
            ),
          ),
          body: const TabBarView(children: [
            SelectionListScreen(
              listItems: [],
              path: '',
              paramType: '',
            ),
            SelectionListScreen(
              listItems: [],
              path: '',
              paramType: '',
            ),
            SelectionListScreen(
              listItems: [],
              path: '',
              paramType: '',
            ),
            SelectionListScreen(
              listItems: [],
              path: '',
              paramType: '',
            ),
          ])
        ));
  }
}

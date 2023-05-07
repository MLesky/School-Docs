import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/app/reading/reading.dart';
import 'package:school_docs/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO: SVG icon color

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _tabIndex;
  late int delayTime;

   @override
   void initState() {
     super.initState();
     _tabIndex = _prefs.then((SharedPreferences pref) => pref.getInt('tabIndexValue') ?? 0);
   }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
        future: _tabIndex,
        builder: (context, snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: SpinKitFadingFour(color: Theme.of(context).dividerColor,),);
            case ConnectionState.active:
            case ConnectionState.done:
              return snapshot.hasError
                  ? Center(child: Text('${snapshot.error}', style: const TextStyle(color: Colors.red)))
                  : DefaultTabController(
                  initialIndex: snapshot.data!,
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
                          onTap: (index) async {
                            final SharedPreferences tabIndexPref = await _prefs;
                            tabIndexPref.setInt('tabIndexValue', index);
                          },
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/app/reading/reading.dart';
import 'package:school_docs/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key, required this.course});
  final String course;

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  late IconData viewTypeIcon;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<bool> _isGridView;

  Future<void> _swapView() async {
    final SharedPreferences pref = await _prefs;
    final bool isGridView = !(pref.getBool('isGridView') ?? false);

    setState(() {
      _isGridView = pref.setBool('isGridView', isGridView).then((bool success) => isGridView);
      print('Is grid view $isGridView');
    });

  }

  @override
  void initState() {
    super.initState();
    _isGridView = _prefs.then((SharedPreferences pref) => pref.getBool('isGridView') ?? false);
  }

  @override
  Widget build(BuildContext context) {
    late List<Document> listOfDocuments;
    try {
      listOfDocuments = listOfColtechCenYear2Sem2Courses.firstWhere((element) => element.name.toLowerCase() == widget.course).documents;
    } catch (err) {
      listOfDocuments = [];
    }

    return FutureBuilder<bool>(
      future: _isGridView,
      builder: (context, snapshot) {
      switch(snapshot.connectionState) {
        case ConnectionState.none:
        case ConnectionState.waiting:
          return Center(child: SpinKitFadingFour(color: Theme.of(context).dividerColor,),);
        case ConnectionState.active:
        case ConnectionState.done:
            viewTypeIcon = snapshot.data! ? Icons.grid_view : Icons.list;
          return snapshot.hasError
              ? Center(child: Text('${snapshot.error}', style: const TextStyle(color: Colors.red)))
              : Scaffold(
          appBar: AppBar(
            title: const Text(kAppName),
            actions: [
              IconButton(
                onPressed: () {
                  print('You clicked the refresh button');
                },
                icon: const Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: _swapView,
                icon: Icon(viewTypeIcon),
              ),
              IconButton(
                onPressed: () {
                  context.goNamed(Routes.settings);
                },
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
          ),
          body: snapshot.data!
              ? SelectionGridScreen(
            listItems: listOfDocuments,
            path: '',
            paramType: 'document',
            params: {'course': widget.course},
          //  useNormalCardItem: false,
          )
            : SelectionListScreen(
            listItems: listOfDocuments,
            path: '',
            paramType: 'document',
            params: {'course': widget.course},
            useNormalCardItem: false,
          ),
        );
      }
      }
    );
  }
}

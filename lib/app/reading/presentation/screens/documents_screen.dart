import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/app/reading/reading.dart';
import 'package:school_docs/utils/utils.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key, required this.course});
  final String course;

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {

  IconData viewTypeIcon = Icons.grid_view;

  @override
  Widget build(BuildContext context) {
    late List<Document> listOfDocuments;
    try {
      listOfDocuments = listOfColtechCenYear2Sem1Courses.firstWhere((element) => element.name.toLowerCase() == widget.course).documents;
    } catch (err) {
      listOfDocuments = [];
    }
    return Scaffold(
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
            onPressed: () {
              setState(() {
                viewTypeIcon = viewTypeIcon == Icons.grid_view ? Icons.list : Icons.grid_view;
              });
            },
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
      body: SelectionGridScreen(
        listItems: listOfDocuments,
        path: '',
        paramType: '',
      //  useNormalCardItem: false,
      ),
    );
  }
}

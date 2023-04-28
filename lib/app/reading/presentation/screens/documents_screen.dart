import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/utils.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({Key? key}) : super(key: key);

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {

  IconData viewTypeIcon = Icons.grid_view;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
        leading:
        Padding(
          padding: const EdgeInsets.fromLTRB(Spacings.sm, 0, 0, 0),
          child: SvgPicture.asset(Assets.logoWhite, color: Colors.white,),
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
      body: SelectionListScreen(
        listItems: [],
        path: '', paramType: '',
      ),
    );
  }
}

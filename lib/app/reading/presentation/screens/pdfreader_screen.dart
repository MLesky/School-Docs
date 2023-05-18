import 'package:flutter/material.dart';
import 'package:school_docs/utils/utils.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfReaderScreen extends StatefulWidget {
  const PdfReaderScreen(
      {super.key, required this.document, required this.docPath});
  final String document;
  final String docPath;

  @override
  State<PdfReaderScreen> createState() => _PdfReaderScreenState();
}

class _PdfReaderScreenState extends State<PdfReaderScreen> {
  final PdfViewerController _pdfViewerController = PdfViewerController();
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late TextEditingController _pageNumberController;
  late int _numberOfPages;
  late int currentPage;
  PdfScrollDirection scrollDirection = PdfScrollDirection.vertical;
  PdfPageLayoutMode pageLayout = PdfPageLayoutMode.continuous;

  void setCurrentPage(int newPage) {
    setState(() {
      _pageNumberController = TextEditingController(text: newPage.toString());
    });
  }

  @override
  void initState() {
    super.initState();
    _numberOfPages = _pdfViewerController.pageCount;
    _pageNumberController = TextEditingController(text: (_pdfViewerController.pageNumber + 1).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.document.toTitleCase(),
          textScaleFactor: 0.8,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 20,
              )),
          HorizontalSpacings.sm,
          PopupMenuButton(
              child: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 20,
              ),
              itemBuilder: (context) => <PopupMenuItem>[
                    PopupMenuItem(
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_add),
                            label: const Text('Add BookMark'))),
                    PopupMenuItem(
                        child: TextButton.icon(
                            onPressed: () {
                              _pdfViewerKey.currentState?.openBookmarkView();
                            },
                            icon: const Icon(Icons.bookmark),
                            label: const Text('All BookMarks'))),
                    const PopupMenuItem(child: Divider()),
                    PopupMenuItem(
                        child: TextButton.icon(
                            onPressed: () {
                              setState(() {
                                scrollDirection = PdfScrollDirection.vertical;
                              });
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_downward),
                            label: const Text('Vertical Scrolling'))),
                    PopupMenuItem(
                        child: TextButton.icon(
                            onPressed: () {
                              setState(() {
                                scrollDirection = PdfScrollDirection.horizontal;
                              });
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_forward),
                            label: const Text('Horizontal Scrolling'))),
                    const PopupMenuItem(child: PopupMenuDivider()),
                    PopupMenuItem(
                        child: TextButton.icon(
                            onPressed: () {
                              setState(() {
                                pageLayout = PdfPageLayoutMode.single;
                              });
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.file_open),
                            label: const Text('Page by Page'))),
                    PopupMenuItem(
                        child: TextButton.icon(
                            onPressed: () {
                              setState(() {
                                pageLayout = PdfPageLayoutMode.continuous;
                              });
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.file_copy),
                            label: const Text('Continuous Page'))),
                  ]),
          HorizontalSpacings.md,
        ],
      ),
      body: SfPdfViewer.asset(
        'assets/${widget.docPath}',
        controller: _pdfViewerController,
        key: _pdfViewerKey,
        onDocumentLoaded: (details) {
          setState(() {
            _numberOfPages = _pdfViewerController.pageCount;
          });
        },
        scrollDirection: scrollDirection,
        pageLayoutMode: pageLayout,
        canShowPaginationDialog: true,
        canShowScrollHead: true,
        canShowScrollStatus: true,
        onPageChanged: (pageDetails) =>
            setCurrentPage(pageDetails.newPageNumber),
        onDocumentLoadFailed: (details) {
          showDialog<dynamic>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(details.error),
                  content: Text(details.description),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
        },
      ),
      bottomSheet: BottomAppBar(
          color: Theme.of(context).appBarTheme.backgroundColor,
          elevation: 5,
          padding: const EdgeInsets.all(Spacings.xs),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              onPressed: () {
                _pdfViewerController.firstPage();
                setCurrentPage(_pdfViewerController.pageNumber);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.previousPage();
                setCurrentPage(_pdfViewerController.pageNumber);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  width: 50,
                  child: TextField(
                    controller: _pageNumberController,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    showCursor: false,
                    onSubmitted: (value) {
                      _pdfViewerController.jumpToPage(int.parse(value));
                      setCurrentPage(_pdfViewerController.pageNumber);
                    },
                  ),
                ),
                Text(
                  "/$_numberOfPages",
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                )
              ],
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.nextPage();
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.lastPage();
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              ),
            ),
          ])),
    );
  }
}
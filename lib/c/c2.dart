import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    title: 'C Programming',
    home: HomePagec1(),
  ));
}

/// Represents Homepage for Navigation
class HomePagec1 extends StatefulWidget {
  @override
  _HomePagec1 createState() => _HomePagec1();
}

class _HomePagec1 extends State<HomePagec1> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Programming'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        "assets/02CExamples.pdf",
        key: _pdfViewerKey,
      ),
    );
  }
}

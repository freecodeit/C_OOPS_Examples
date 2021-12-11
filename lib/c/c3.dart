import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    title: 'C Programming',
    home: HomePagec2(),
  ));
}

/// Represents Homepage for Navigation
class HomePagec2 extends StatefulWidget {
  @override
  _HomePagec2 createState() => _HomePagec2();
}

class _HomePagec2 extends State<HomePagec2> {
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
        "assets/cprogramming_tutorial.pdf",
        key: _pdfViewerKey,
      ),
    );
  }
}

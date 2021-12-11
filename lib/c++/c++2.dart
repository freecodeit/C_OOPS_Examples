import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    title: 'C++ Programming',
    home: HomePagec21(),
  ));
}

class HomePagec21 extends StatefulWidget {
  @override
  _HomePagec21 createState() => _HomePagec21();
}

class _HomePagec21 extends State<HomePagec21> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C++ Programming'),
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
        "assets/c++2.pdf",
        key: _pdfViewerKey,
      ),
    );
  }
}

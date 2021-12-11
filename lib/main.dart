import 'package:c_oops_examples/c++/main.dart';
import 'package:c_oops_examples/c/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://www.youtube.com/freecode?sub_confirmation=1';
void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("C, C++ Examples"),
        elevation: 0,
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/freecode.jpg"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.blueAccent,
                      onSurface: Colors.black,
                      shadowColor: Colors.red,
                      elevation: 10,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePagecmain(),
                        ),
                      );
                    },
                    child: Text(
                      'C',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                      backgroundColor: Colors.black,
                      onSurface: Colors.black,
                      shadowColor: Colors.red,
                      elevation: 10,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePagec(),
                        ),
                      );
                    },
                    child: Text(
                      'C++',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.black,
                  onSurface: Colors.black,
                  shadowColor: Colors.red,
                  elevation: 10,
                ),
                onPressed: _launchURL,
                child: Text(
                  'Youtube',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

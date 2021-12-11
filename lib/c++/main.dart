import 'package:c_oops_examples/c++/c++1.dart';
import 'package:c_oops_examples/c++/c++2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePagec(),
  ));
}

class HomePagec extends StatefulWidget {
  const HomePagec({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePagec> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("C++ Programming"),
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
                image: AssetImage("assets/c++.png"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  onSurface: Colors.black,
                  shadowColor: Colors.blue,
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePagec12(),
                    ),
                  );
                },
                child: Text(
                  'Book 1',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  onSurface: Colors.black,
                  shadowColor: Colors.blue,
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePagec21(),
                    ),
                  );
                },
                child: Text(
                  'Book 2',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

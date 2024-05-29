import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'first_page.dart';
import 'dart:async';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PoetsenOne-Regular',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Navigate to FirstPage after 10 seconds
    Timer(Duration(seconds: 10), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => FirstPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img_4.png',
              width: 160,
              height: 160,
            ),
            SizedBox(height: 60),
            SizedBox(
              width: 80,
              height: 80,
              child: LoadingIndicator(
                indicatorType: Indicator.ballRotateChase, // Choose the type of indicator
                colors: [Color.fromRGBO(120, 6, 84, 1)], // Set the color to green
                strokeWidth: 1,
                backgroundColor: Colors.transparent,
                pathBackgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

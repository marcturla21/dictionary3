import 'dart:async';
import 'package:flutter/material.dart';
import 'dictionary_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate loading data for 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DictionaryScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7DAF3), // Set background color to #d7daf3
      body: Center(
        child: Image.network(
          'https://i.redd.it/0g30oqtpiyd51.gif', // Replace with your GIF URL
          width: 200.0,
          height: 200.0,
          // You can adjust width and height according to your preference
        ),
      ),
    );
  }
}
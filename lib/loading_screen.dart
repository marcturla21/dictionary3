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
      backgroundColor: Color(0xFFD7DAF3),
      body: Center(
        child: Image.network(
          'https://i.redd.it/0g30oqtpiyd51.gif',
          width: 200.0,
          height: 200.0,
        ),
      ),
    );
  }
}
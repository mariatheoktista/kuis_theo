import 'package:flutter/material.dart';
import 'package:kuis_mobile/disease.dart';
import 'detailpage.dart';
import 'homepage.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        // '/detail': (context) => DetailPage()
      },
    );
  }
}
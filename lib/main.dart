// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sitting_design/pages/signin_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink[50]),
      home: Scaffold(
        body: SignInPage(),
      ),
    );
  }
}

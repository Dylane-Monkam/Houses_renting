import 'package:flutter/material.dart';
import 'package:housesrenting/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Houses Renting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

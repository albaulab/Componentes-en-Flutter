import 'package:flutter/material.dart';

// import 'package:componenetes/src/pages/home_temp.dart';
import 'package:componenetes/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componenetes',
        debugShowCheckedModeBanner: false,
        home: HomePages());
  }
}

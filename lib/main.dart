import 'package:componenetesapp/src/pages/card_page.dart';
import 'package:flutter/material.dart';

import 'package:componenetesapp/src/routes/routes.dart';
// import 'package:componenetesapp/src/pages/alert_page.dart';
// import 'package:componenetesapp/src/pages/avatar_page.dart';
// // import 'package:componenetes/src/pages/home_temp.dart';
// import 'package:componenetesapp/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componenetes',
      debugShowCheckedModeBanner: false,
      // home: HomePages());
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CardPage());
      },
    );
  }
}

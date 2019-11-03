import 'package:componenetesapp/src/pages/alert_page.dart';
import 'package:componenetesapp/src/pages/avatar_page.dart';
import 'package:componenetesapp/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePages(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}

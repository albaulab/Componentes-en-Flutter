import 'package:componenetesapp/src/pages/alert_page.dart';
import 'package:componenetesapp/src/pages/animate.dart';
import 'package:componenetesapp/src/pages/avatar_page.dart';
import 'package:componenetesapp/src/pages/card_page.dart';
import 'package:componenetesapp/src/pages/home_page.dart';
import 'package:componenetesapp/src/pages/input_page.dart';
import 'package:componenetesapp/src/pages/listview_page.dart';
import 'package:componenetesapp/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePages(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimateContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'Slider': (BuildContext context) => SliderPages(),
    'list': (BuildContext context) => ListaPage()
  };
}

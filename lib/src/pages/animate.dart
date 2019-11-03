import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainerPage extends StatefulWidget {
  @override
  _AnimateContainerPageState createState() => _AnimateContainerPageState();
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {
  double _ancho = 50.0;
  double _altura = 50.0;
  Color _colores = Colors.pink;

  BorderRadiusGeometry _borders = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Conteiner Animado'),
      ),
      body: Container(
        color: Colors.black12,
        child: Center(
          child: AnimatedContainer(
            // color: Colors.black,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width: _ancho,
            height: _altura,
            decoration: BoxDecoration(borderRadius: _borders, color: _colores),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarForma,
      ),
    );
  }

  _cambiarForma() {
    final randon = Random();

    setState(() {
      _ancho = randon.nextInt(300).toDouble();
      _altura = randon.nextInt(300).toDouble();
      _colores = Color.fromRGBO(
          randon.nextInt(255), randon.nextInt(255), randon.nextInt(255), 1);
      _borders = BorderRadius.circular(randon.nextInt(100).toDouble());
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePagesTemps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componenet Temps"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('ListTile Tile'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTile Tile'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTile Tile'),
          ),
          Divider(),
        ],
      ),
    );
  }
}

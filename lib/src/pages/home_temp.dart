import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePagesTemps extends StatelessWidget {
  final opciones = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componenet Temps"),
      ),
      body: ListView(children: _crearItemCorta()),
    );
  }

  /*

    List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

*/

  List<Widget> _crearItemCorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
    return widgets;
  }
}

/* 
final List<String> entries  = <String>['Primera','Segunda','Tercera'];

ListView.Builder(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext Context, int index){
      return Container(
        height: 50,
        child: Center(child: Text('Entry ${entries[index]}')),
      );
    }

);
*/

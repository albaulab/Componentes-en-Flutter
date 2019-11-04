import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _date = '';

  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  String _opcionesSelecionadas = 'Volar';

  TextEditingController _inputFielDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Inputs de Texto'),
      ),
      body: Container(
        color: Colors.black12,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPass(),
            Divider(),
            _crearDates(context),
            Divider(),
            _crearDropDown(),
            Divider(),
            _crearPersona(),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          fillColor: Colors.black,
          focusColor: Colors.black87,
          hoverColor: Colors.black12,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la Persona ',
          labelText: 'nombre',
          helperText: 'Solo es el nombre',
          suffixIcon: Icon(
            Icons.accessibility,
            color: Colors.black12,
          ),
          icon: Icon(Icons.account_circle, color: Colors.black)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
        // autofocus: true,
        // textCapitalization: TextCapitalization.sentences,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            fillColor: Colors.black,
            focusColor: Colors.black87,
            hoverColor: Colors.black12,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // counter: Text('Letras ${_nombre.length}'),
            hintText: 'Email ',
            labelText: 'Email',
            // helperText: 'Correo Electronico',
            suffixIcon: Icon(
              Icons.alternate_email,
              color: Colors.black12,
            ),
            icon: Icon(Icons.email, color: Colors.black)),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  Widget _crearPass() {
    return TextField(
      // autofocus: true,
      // textCapitalization: TextCapitalization.sentences,
      // keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
          fillColor: Colors.black,
          focusColor: Colors.black87,
          hoverColor: Colors.black12,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          // counter: Text('Letras ${_nombre.length}'),
          hintText: 'Password ',
          labelText: 'Password',
          // helperText: 'Contrase;a',
          suffixIcon: Icon(
            Icons.lock,
            color: Colors.black12,
          ),
          icon: Icon(Icons.lock_outline, color: Colors.black)),
      // onChanged: (valor) => setState(() {
      // _email = valor;
      // })
    );
  }

  Widget _crearDates(BuildContext context) {
    return TextField(
      // autofocus: true,
      // textCapitalization: TextCapitalization.sentences,
      // keyboardType: TextInputType.emailAddress,
      // obscureText: true,
      enableInteractiveSelection: false,
      controller: _inputFielDateController,
      decoration: InputDecoration(
          fillColor: Colors.black,
          focusColor: Colors.black87,
          hoverColor: Colors.black12,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          // counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nacimiento ',
          labelText: 'Nacimiento',
          // helperText: 'Fecha de Nacimiento',
          suffixIcon: Icon(
            Icons.calendar_today,
            color: Colors.black12,
          ),
          icon: Icon(Icons.calendar_today, color: Colors.black)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFielDateController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        DropdownButton(
          value: _opcionesSelecionadas,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
            // print(opt);
            setState(() {
              _opcionesSelecionadas = opt;
            });
          },
        ),
      ],
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_opcionesSelecionadas),
    );
  }
}

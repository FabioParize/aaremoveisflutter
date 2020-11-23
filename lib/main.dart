import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Agendamento De Consultas',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: PrimeiraTela(),
  ));
}

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agende sua Consulta'),
      ),
      body: Center(
        child: new Form(
          child: _formUI(),
        ),
      ),
    );
  }
}

//  abstract class Botao extends State {
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        home: Center(
//          child: new RaisedButton(
//           child: Text('Abrir 2º Tela'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SegundaTela()),
//             );
//           },
//         ),
//        ),
//      );
//    }
//  }

Widget _formUI() {
  return new Column(
    children: <Widget>[
      new TextFormField(
        decoration: new InputDecoration(hintText: 'Nome Completo'),
        onSaved: (String val) {},
      ),
      new TextFormField(
          decoration: new InputDecoration(hintText: 'Data'),
          keyboardType: TextInputType.datetime,
          onSaved: (String val) {}),
      new TextFormField(
          decoration: new InputDecoration(hintText: 'Hora'),
          keyboardType: TextInputType.datetime,
          onSaved: (String val) {}),
      new TextFormField(
          decoration: new InputDecoration(hintText: 'Médico'),
          keyboardType: TextInputType.text,
          onSaved: (String val) {}),
      new TextFormField(
          decoration: new InputDecoration(hintText: 'Celular'),
          keyboardType: TextInputType.phone,
          onSaved: (String val) {}),
      new TextFormField(
          decoration: new InputDecoration(hintText: 'Email (não obrigatório)'),
          keyboardType: TextInputType.emailAddress,
          onSaved: (String val) {}),
          new SizedBox(height: 30.0),
        new RaisedButton(
          onPressed: (_sendForm),
          child: Text('Agendar'),
          ),
    ],
  );
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultas Agendadas"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Retornar !'),
        ),
      ),
    );
  }
}

_sendForm() {}

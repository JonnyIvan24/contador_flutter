import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ContadorPAgeState();
}

class _ContadorPAgeState extends State<ContadorPage> {
  final _textStyle = new TextStyle( fontSize: 25 );
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Números de clicks', style: _textStyle,),
            Text('$_conteo', style: _textStyle,)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        //onPressed: null, //disbled = true
        child: Icon(Icons.add),
        onPressed: () {
          // print('hola mundo');

          setState(() {
            _conteo++;
          });
        },
      ),
    );
  }
}
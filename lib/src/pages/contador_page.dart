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
      floatingActionButton: _crearBotones()
    );
  }


/*
metodo para agregar botones
*/
  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: null,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: null,),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: null,)
      ],
    );
  }
}
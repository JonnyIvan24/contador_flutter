import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  /* 
  en los widgets tipo less las variables deben ser inmutables
  por lo tanto se deben de declarar como final
  */

  final textStyle = new TextStyle( fontSize: 25 );
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Números de clicks', style: textStyle,),
            Text('$conteo', style: textStyle,)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        //onPressed: null, //disbled = true
        child: Icon(Icons.add),
        onPressed: () {
          print('hola mundo');
          //conteo = conteo + 1;
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: Text("Desplegar Snackbar"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Hola soy un snackbar"),
          duration: Duration(seconds: 3),
          action: SnackBarAction(
            label: "Ver",
            onPressed: (){
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("no hay nada que ver !!"),
                )
              );
            },
          )
        ));
      },
    );
  }
}

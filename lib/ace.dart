import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'main.dart';



class MyApp2 extends StatefulWidget {
  var nombre;
  var grupo;
  var matricula;
  MyApp2(this.nombre,this.grupo,this.matricula);
  @override
  _AppState2 createState() => _AppState2(this.nombre,this.grupo,this.matricula);
}

class _AppState2 extends State<MyApp2> {
  var nom;
  var gr;
  var mat;

  _AppState2(this.nom, this.gr, this.mat);

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca de mi"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(child: Text(nom),),
          ],),
          Padding(padding: EdgeInsets.all(10.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(child: Text(gr),),
            ],),
          Padding(padding: EdgeInsets.all(10.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(child: Text(mat),),
            ],),
          Padding(padding: EdgeInsets.all(25.0),),
          Container(
            padding: EdgeInsets.all(16),
            //color: Colors.blue,
            alignment: Alignment.center,
            child: MaterialButton(
              highlightColor: Colors.yellowAccent,
              child: Text("Regresar"),
              color: Colors.orangeAccent,
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Menu()));
              },
            ),
          ),
          ]

      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'pant.dart';
import 'ace.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(
      home: spla(),
    ));

class spla extends StatefulWidget {
  @override
  _spla createState() => new _spla();
}

class _spla extends State<spla> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        'Salud/Covid',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),
      ),
      photoSize: 120.0,
      seconds: 6,
      backgroundColor: Colors.black,
      image: Image.network(
        "https://ibero.mx/sites/default/files/styles/noticias__713x400_/public/prensaymultimedios/coronavirus-4914026_1280.jpg?itok=RqAkS5Xo",
      ),
      navigateAfterSeconds: new Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Opciones"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: MaterialButton(
                highlightColor: Colors.pinkAccent,
                height: 50.0,
                color: Colors.purpleAccent,
                child: RichText(
                  text: TextSpan(
                    text: 'Toma una foto ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp(
                                open: "word1",
                              )));
                },
              )),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            child: MaterialButton(
              highlightColor: Colors.pinkAccent,
              height: 50.0,
              color: Colors.purpleAccent,
              child: RichText(
                text: TextSpan(
                  text: 'Ir a galeria ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyApp(
                              open: "word2",
                            )));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            child: MaterialButton(
              highlightColor: Colors.blueGrey,
              height: 50.0,
              color: Colors.blueAccent,
              child: RichText(
                text: TextSpan(
                  text: 'Acerca de ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyApp2('Citlaly Salome Ordoñez Romero', 'Tic 41', '1718110401')));
              },
            ),
          ),
        ],
      ),
    );
  }
}

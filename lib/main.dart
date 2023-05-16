import 'package:flutter/material.dart';
import 'descripcion_lugar.dart';
import 'lista_reviewers.dart';
import 'encabezado_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Esta es la AppBar aqui'),
        ),*/
        body:
            Stack (
              children: [
                ListView(
                  children: [
                    Descripcion_lugar(),
                    lista_reviewers()
                  ],
                ),
                Encabezado(),
              ],
            )

      ),
    );
  }
}

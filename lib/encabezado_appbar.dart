import 'package:flutter/material.dart';
import 'gradiente_fondo.dart';
import 'lista_lugares_arriba.dart';

class Encabezado extends StatelessWidget {
  @override


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradientBack(),
        lista_lugares()
      ],
    );
  }

}
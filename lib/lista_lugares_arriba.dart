import 'package:flutter/material.dart';
import 'trajeta_imagen.dart';


class lista_lugares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final listado = Container (
        height: 350,
        child:
        ListView(
          padding: EdgeInsets.all(20.0),
          scrollDirection: Axis.horizontal,
          children: [
            tarjeta_Lugar("assets/img/beach.jpeg"),
            tarjeta_Lugar("assets/img/beach_palm.jpeg"),
            tarjeta_Lugar("assets/img/mountain.jpeg"),
            tarjeta_Lugar("assets/img/mountain_stars.jpeg"),
          ],
        )
    );

    return listado;
  }

}


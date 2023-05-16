import 'package:flutter/material.dart';

class Descripcion_lugar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String texto ="Lorem ipsum dolor sit amet. Eum tempore culpa aut unde iure aut veritatis quis a illum impedit ut omnis voluptas! Ut saepe voluptatem vel molestias nisi ut rerum odio ut veniam porro At blanditiis molestiae! Qui quos iure sit consectetur doloribus et iure corrupti qui incidunt tempore. Aut facere nesciunt sit cupiditate vero et molestiae dolorum. Aut excepturi autem aut quidem necessitatibus in dolor vero At minus officia sed perferendis minima ea fugit optio.";
    var valortop=350.0;
    //final margen_top = 350;


    final estrella = Container (
      margin: EdgeInsets.only(
        top: valortop,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      )
    );
    final estrella_mitad = Container (
        margin: EdgeInsets.only(
            top: valortop,
            right: 3.0
        ),
        child: Icon(
          Icons.star_half,
          color: Colors.amber,
        )
    );

    final titulo_estrellado = Row (
      children: [
        Container (
          margin: EdgeInsets.only(
            top: valortop,
            left:20.0,
            right:20.0
          ),
          child: Text(
            "Duwilli Ella",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            estrella,
            estrella,
            estrella,
            estrella,
            estrella_mitad
          ],
        ),
      ],
    );

    final descripcion = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left:20.0,
        right:20.0
      ),
      child: Text(
        texto,
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w100,
            color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      children: [
        titulo_estrellado,
        descripcion
      ],
    );
  }
  
}
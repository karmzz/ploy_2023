import 'package:flutter/material.dart';

class reviews_info extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String nombre = "Varuna Yasas";
  String detalles = "1 review · 5 photos";
  String comentarios = "There is an amazing place in Sri Lanka";

  reviews_info(this.pathImage, this.nombre, this.detalles, this.comentarios);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final foto = Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(
        top:20,
        left:20,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImage),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );

    final userName = Container(
        width: 200,
        margin: EdgeInsets.only(
            left: 10.0,
            top:20
        ),
      child: Text(
          nombre,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Kaushan",
          fontSize: 17,
        )
      )
    );

    final estrella = Container (
        margin: EdgeInsets.only(
            left: 3.0
        ),
        child: Icon(
          Icons.star,
          color: Colors.amber,
          size: 12,
        )
    );

    final userRanking = Row (
      children: [
        Container(
          margin: EdgeInsets.only(
               left: 0.0
          ),// que ha hecho el usuario
          child: Text(
              detalles,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13,
              )
          ),
        ),
        Row ( //estrellias
          children: [
            estrella,
            estrella,
            estrella,
            estrella,
            estrella
          ],
        ),
      ],
    );

    final userText = Container(
        margin: EdgeInsets.only(
            left: 20.0,
            top: 5
        ),
        width: 200,
      child: Text(
        comentarios,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 10,
          )
      ),
    );

    final userInfo = Column(
      children: [
        userName,
        userRanking,
        userText,
      ],
    );

    return Row(
      children: [
        foto,
        userInfo,
      ],
    );

  }

}

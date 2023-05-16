import 'package:flutter/material.dart';

class tarjeta_Lugar extends StatelessWidget {
  String path = "assets/img/sunset.jpeg";
  tarjeta_Lugar(this.path);
  @override
  Widget build(BuildContext context) {
    final tarjeta = Container(
      height: 220,
      width: 280,
      margin: EdgeInsets.only(
        top:90,
        left:20,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        boxShadow: <BoxShadow>[
          BoxShadow (
              color:  Colors.black38,
              blurRadius: 5.0,
              offset: Offset(10.0, 15.0)
          )
        ],
        image: DecorationImage(
          image: AssetImage(path),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );
    return tarjeta;
  }


}



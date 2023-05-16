import 'package:flutter/material.dart';
import 'gradiente_fondo.dart';


class cora_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pathImage = "assets/img/danat.jpg"; //el perfil del usuario

    final foto = Container(
      height: 100, //las dimensiones para nuestra foto de perfil (más pequeña)
      width: 100,
      padding: EdgeInsets.all(3.0), // ajusta el tamaño del margen
      decoration: const BoxDecoration(  //para darle estilo

        shape: BoxShape.circle,//

      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pathImage),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle
          //borderRadius: BorderRadius.circular(50.0), // redondea los bordes de la imagen
        ),
      ),
    );

    final nombre_usuario = Container(
      child: Text(
          "Dana Terraza", //nombre
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "TiltNeon", //esta tipografía me gusta!!!
            fontSize: 25, //reducción
            color: Colors.white,
          )
      ),
    );

    final gallery = Container(
      child: Text(
          "Public Gallery", //descrip
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "KaushanScript", //esta tipografía es buena
            fontSize: 10, //reducción
            color: Colors.white,
          )
      ),
    );

    final descri = Container( //
      child: Text(
          "These here are my favorites 🦉",
          //texto de la biografía
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "KaushanScript",
            fontSize: 13,
            color: Colors.white,
          )
      ),
    );

    final info_user = Container( //elementos de la cabecera
      height: 100,
      width: 210,
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nombre_usuario,
          gallery,
          descri
        ],
      ),
    );

    final informacion_basica_usuario = Container(
      margin:EdgeInsets.only(
        top:50,
        left:50,
      ),
      child:  Row (
        children: [ //guarda esto
          foto,
          info_user
        ],
      ),
    );
    //Aqui definimos los botones de navegacion //oh!
    final botones_navegacion = Container(
      margin: EdgeInsets.only(
        top:20,

      ),
      child:  Row(
        children: const [ //todos los iconos para la info de usuario!
          Expanded(child: IconoPequeno(icono: Icons.bookmark_add_outlined, size: 35.0)),
          Expanded(child: IconoPequeno(icono: Icons.badge_outlined, size: 35.0)),
          Expanded(child: IconoPequeno(icono: Icons.add, size: 50.0)),
          Expanded(child: IconoPequeno(icono: Icons.email_outlined, size: 35.0)),
          Expanded(child: IconoPequeno(icono: Icons.person, size: 35.0)),


        ],
      ),
    );

    final encabezado_profile = Column(
      children: [
        informacion_basica_usuario,
        botones_navegacion,
      ],
    );

    final paisaje_list=Container( //ORDEN IMAGENES
      margin: EdgeInsets.only(
          top: 240
      ),
      child: ListView(
        children: [ //la galería

          PaisajeCard("assets/img/c6.jpg"),
          PaisajeCard("assets/img/c7.jpg"),
          PaisajeCard("assets/img/c8.png"),
        ],
      ),
    );

    return Stack( //fondos con degradado
      children: [
        GradientBack("Saved", 270),
        paisaje_list,
        GradientBack("Saved", 210),
        encabezado_profile,
      ],
    );

  }

}

class PaisajeCard extends StatelessWidget { //LISTA IMAGENES
  final String pathImg; //llama imagen
  PaisajeCard(this.pathImg);
  //PaisajeCard(this.pathImg);
  @override
  Widget build(BuildContext context) {
    //Paisaje fotos
    final paisaje_foto=Container(
        width:370,
        height: 200,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(
            top: 12
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),// redondea los bordes de la imagen
            image: DecorationImage(
              image: AssetImage(pathImg),
              fit: BoxFit.cover,
            ),

          ),
        )
    );


    final paisaje_icono=Container( //iconos para las imagenes en galería
        width: 30,
        height: 30,
        margin: EdgeInsets.only(
          top: 199,
          left: 250,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFDB1863),
          shape: BoxShape.circle,// redondea los bordes del margen
        ),
        child: Icon(
          Icons.share, //para compartir la imagen
          size: 16,
          color: Color(0xFFFFFFFF),
        )
    );

    final otro_icono=Container(
        width: 30,
        height: 30,
        margin: EdgeInsets.only(
          top: 199,
          left: 180,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFDB1863),
          shape: BoxShape.circle,// redondea los bordes del margen
        ),
        child: Icon(
          Icons.info, //información sobre el autor de la imagen
          size: 19,
          color: Color(0xFFFFFFFF),
        )
    );

    final un_icono=Container(
        width: 30,
        height: 30,
        margin: EdgeInsets.only(
          top: 199,
          left: 110,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFDB1863),
          shape: BoxShape.circle,// redondea los bordes del margen
        ),
        child: Icon(
          Icons.star, //icono de valoración (like)
          size: 19,
          color: Color(0xFFFFFFFF),
        )
    );

    return Stack(
      children: [
        paisaje_foto,
        paisaje_icono,
        otro_icono,
        un_icono,
      ],
      alignment: Alignment(0.0, -1.0),
    );
  }

}

class IconoPequeno extends StatelessWidget {
  final IconData icono;
  final double size;
  const IconoPequeno({Key? key, required this.icono, this.size = 30.0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final salida = Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          shape: BoxShape.circle,// redondea los bordes del margen

        ),
        child: Icon(
          icono,
          size: (size-12),
          color: const Color(0xFF0557B6), //selección del color para los botones
        )
    );
    return salida;
  }
}

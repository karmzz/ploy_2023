import 'package:flutter/material.dart';
import 'reviews_info.dart';

class lista_reviewers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final listado = Column(
      children: [
        reviews_info("assets/img/people.jpg", "Carlos", "1 review · 5 photos", "Wooooooow"),
        reviews_info("assets/img/girl.jpg", "Girl", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/ann.jpg", "user03", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
        reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
      ],
    );

    return listado;
  }

}


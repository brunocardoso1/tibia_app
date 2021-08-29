import 'package:flutter/material.dart';
import 'package:tibia/app_images/all_images.dart';

Widget ConstruirCard(String tituloInicial, String lvl, String world,String link) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
    child: Card(
      child: Column(
        children: [
          Stack(
            children: [
              CriarBackground(),
              CriarTitulo(tituloInicial),
              MostraLevel(lvl),
              MostraMundo(world),
              CriaImage(link),
            ],
          )
        ],
      ),
    ),
  );
}

Widget CriarBackground() {
  return Container(
      height: 180,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
            Colors.transparent,
            Colors.orange.withOpacity(0.5)
          ])));
}

Widget CriarTitulo(String titulo) {
  return Positioned(
    top: 15,
    left: 110,
    child: Text(
      titulo,
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
  );
}

Widget MostraLevel(String lvl) {
  return Positioned(
      top: 40,
      left: 110,
      child: Text(
        "Level: $lvl" ,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ));
}

Widget MostraMundo (String world) {
  return Positioned(
      top: 55,
      left: 110,
      child:
      Text("World: $world",
        style: TextStyle(color: Colors.black, fontSize: 15),),

  );
}



Widget CriaImage(String link) {
  return Positioned(
    top: 10,
    left: 10,
      child: Stack(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 2,
                )
              ],
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(AppImages.grassFloor),
                fit: BoxFit.cover,
              )
            ),
            child: Positioned(
              child:
              Image.network(link),
            ),
          )
        ],
      )
  );
}
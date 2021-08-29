import 'package:flutter/material.dart';

Widget ConstruirCard(String tituloInicial) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
    child: Card(
      child: Column(
        children: [
          Stack(
            children: [
              CriarBackground(),
              CriarTitulo(tituloInicial),
            ],
          )
        ],
      ),
    ),
  );
}

Widget CriarBackground() {
  return Container(
      height: 238,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.7)
          ])));
}

Widget CriarTitulo(String titulo) {
  return Positioned(
    bottom: 10,
    left: 10,
    child: Text(
      titulo,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}
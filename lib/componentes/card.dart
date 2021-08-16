import 'package:flutter/material.dart';

Widget ConstruirCard(foto) {
  return Card(
    child: Column(
      children: [
        Stack(
          children: [
            CriarBackground(),
          ],
        )
      ],
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
            Colors.deepOrange.withOpacity(0.7)
          ])));
}

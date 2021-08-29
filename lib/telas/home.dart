import 'package:flutter/material.dart';
import 'package:tibia/componentes/card.dart';
import 'package:tibia/componentes/daily_boosted.dart';
import 'package:tibia/componentes/rashid_city.dart';

import '../componentes/build_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String dailycreature = 'Demon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seja bem vindo(a) ao Tibia day!"),
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      drawer: BuildDrawer(),
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: [
              Colors.purple,
              Colors.deepPurple,
              Colors.deepPurpleAccent,
            ]),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  RashidBuilder(),
                  DailyBoosted(),
                ],
              ),
              ConstruirCard("Deepzera"),
              ConstruirCard("Brickwall"),
              ConstruirCard("Bafo de Pepino"),
              ConstruirCard("Neutro Lindinho"),
            ]),
          )),
    );
  }
}

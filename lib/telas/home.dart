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
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      drawer: BuildDrawer(),
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: [
              Colors.orange,
              Colors.deepOrangeAccent,
              Colors.red,
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
              ConstruirCard("Deepzera", "348", "Yonabra","https://www.tibiawiki.com.br/images/8/83/Outfit_Barbarian_Male_Addon_3.gif"),
              ConstruirCard("Deepzord", "390", "Yonabra","https://www.tibiawiki.com.br/images/7/7c/Outfit_Mercenary_Male_Addon_2.gif"),
              ConstruirCard("Bafo de Pepino", "100", "Lutabra", "https://www.tibiawiki.com.br/images/d/df/Outfit_Assassin_Male_Addon_3.gif"),
            ]),
          )),
    );
  }
}

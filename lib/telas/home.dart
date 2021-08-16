import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:tibia/app_images/all_images.dart';

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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 16),
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(1, 2)),
                      ],
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      //color: Colors.cyan,
                      image: DecorationImage(
                        image: AssetImage("assets/images/floor.jpg"),
                        fit: BoxFit.cover,
                      )),
                  child: AnimatedCard(
                    direction: AnimatedCardDirection.left,
                    duration: Duration(seconds: 2),
                    child: Center(
                      child: Image.asset(
                        AppImages.Demon,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

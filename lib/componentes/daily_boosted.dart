import 'package:animated_card/animated_card.dart';
import 'package:animated_card/animated_card_direction.dart';
import 'package:flutter/material.dart';
import 'package:tibia/app_images/all_images.dart';

Widget DailyBoosted() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 18, top: 16, bottom: 10),
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
  );
}

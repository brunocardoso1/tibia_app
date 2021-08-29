import 'package:flutter/material.dart';
import 'package:tibia/app_images/all_images.dart';

Widget RashidBuilder() {
  return Positioned(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 16),
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
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(AppImages.floor), fit: BoxFit.fill)),
            child: (Image.asset(
              AppImages.Rashid,
              scale: 0.8,
            )),
          ),
        ),
      ],
    ),
  );
}

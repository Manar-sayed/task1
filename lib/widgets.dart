import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget gride(color1, icon1, icon2, txt) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 4,
        spreadRadius: .3,
        offset: Offset(0, 3),
      )
    ], color: color1, borderRadius: BorderRadius.circular(15)),
    child: Stack(
      children: [
        Positioned(
            left: 110,
            top: 25,
            child: Icon(
              icon1,
              color: Colors.white.withOpacity(0.3),
              size: 45,
            )),
        Positioned(
          left: 15,
          top: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon2,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                txt,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget recent(img, txt) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, bottom: 15),
    child: Row(
      children: [
        CircleAvatar(
          radius: 22.0,
          backgroundImage: AssetImage(img),
          backgroundColor: Colors.transparent,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          txt,
          style: TextStyle(wordSpacing: .5),
        )
      ],
    ),
  );
}


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DailyWorshipBody extends StatelessWidget {
   DailyWorshipBody({Key? key, required this.image, required this.text, required this.text2}) : super(key: key);
final AssetImage image;
final String text;
   final String text2;

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: (){},
      child: Stack(
        children: [
          Container(
          width: 117,
          height: 166,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff6054FF).withOpacity(.3),

          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
children: [
  Stack(
    alignment: Alignment.topCenter,
    children: [

      CircleAvatar(
              radius: 38,

                backgroundColor: Colors.white,

                  child: Image.asset(image.assetName,width: 35,height: 40,)),
      CircularPercentIndicator(
        radius:38,
        percent:.4,
        lineWidth: 4,
        backgroundColor: Colors.white,
        progressColor: Colors.green,


      )
    ],
  ),
  Text(text,style: TextStyle(fontSize: 14,color: Colors.white),),
  Text(text2,style: TextStyle(fontSize: 14,color: Colors.white))],


            ),
          ),
          ),


        ],
      ),
    )

    ;
  }
}

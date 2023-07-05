
import 'package:flutter/material.dart';

class DailyWorshipBody extends StatelessWidget {
   DailyWorshipBody({Key? key, required this.image, required this.text, required this.text2}) : super(key: key);
final AssetImage image;
final String text;
   final String text2;

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: (){},
      child: Container(
      width: 100,
      height: 166,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff6054FF).withOpacity(.3),

      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
children: [
  CircleAvatar(
      radius: 38,

        backgroundColor: Colors.white,

          child: Image.asset(image.assetName,width: 35,height: 40,)),
  Text(text,style: TextStyle(fontSize: 14,color: Colors.white),),
  Text(text2,style: TextStyle(fontSize: 14,color: Colors.white))],


        ),
      ),
      ),
    )

    ;
  }
}

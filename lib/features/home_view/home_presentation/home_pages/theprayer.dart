
import 'package:flutter/material.dart';

class ThePrayer extends StatelessWidget {
  const ThePrayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(

        children: [
          Container(child: Image.asset("assets/images/backg3.png",height: 100,
            fit: BoxFit.fill,
            width: double.infinity,)),
          GestureDetector(
            onTap: (){},
            child: Container(
              width: double.infinity,
              height: 100,
             // margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),

              ),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("صلاه الظهر",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),
                      SizedBox(height: .5,),

                      Text(" 12:10 مساء",style: TextStyle(fontSize: 16,color: Color(0xff3E3E46)),),
                      SizedBox(height: 1,),

                      Text("الصلاه القادمه العصر",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),
                      SizedBox(height: .5,),


                      Text(" 3:30 مساء",style: TextStyle(fontSize: 16,color: Color(0xff3E3E46)),),

                    ],
                  ),
                  SizedBox(width: 160,),
                  Image.asset("assets/images/mosque.png"),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

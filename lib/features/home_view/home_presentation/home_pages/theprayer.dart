
import 'package:flutter/material.dart';

class ThePrayer extends StatelessWidget {
  const ThePrayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Container(child: Image.asset("assets/images/backg3.png",fit: BoxFit.fill,height: 150,)),
        GestureDetector(
          onTap: (){},
          child: Container(
            width: 350,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("صلاه الظهر",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),
                        SizedBox(height: 2,),
                        Text(" 12:10 مساء",style: TextStyle(fontSize: 19,color: Color(0xff3E3E46)),),
                        SizedBox(height: 2,),
                        Text("الصلاه القادمه العصر",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),
                        SizedBox(height: 2,),


                        Text(" 3:30 مساء",style: TextStyle(fontSize: 19,color: Color(0xff3E3E46)),),

                      ],
                    ),
                  ),
                  Image.asset("assets/images/mosque.png"),


                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

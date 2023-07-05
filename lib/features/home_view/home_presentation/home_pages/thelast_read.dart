


import 'package:flutter/material.dart';

class TheLastRead extends StatelessWidget {
  const TheLastRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Container(
            height: 120,
            child: Image.asset("assets/images/back2.png",)),
        GestureDetector(
          onTap: (){},
          child: Container(
            width: 350,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("اخر قراءه",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),
                      SizedBox(height: 2,),
                      Text("سوره البقره",style: TextStyle(fontSize: 19,color: Color(0xff3E3E46)),),
                      SizedBox(height: 2,),
                      Text("رقم الأيه 20",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),



                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("اكمل اللقراءه",style: TextStyle(fontSize: 14,color: Color(0xff3E3E46)),),
                      Icon(Icons.arrow_forward_sharp)




                    ],
                  ),
                ),

                Image.asset("assets/images/mushaf.png",width: 110,height: 110,),


              ],
            ),
          ),
        ),
      ],
    );
  }
}

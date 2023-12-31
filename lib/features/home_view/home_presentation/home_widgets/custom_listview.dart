

import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
   CustomListView({Key? key}) : super(key: key);
  List<String> title=[
    "أوقات الصلاه",
    "العلم الشرعي",
    "التدبر",
    "الأذكار"
  ];
  List<AssetImage>  images=[
    AssetImage("assets/images/pray.png") ,
    AssetImage("assets/images/learn.png") ,
    AssetImage("assets/images/think.png") ,
    AssetImage("assets/images/sebha.png") ,



  ];
  @override
  Widget build(BuildContext context) {
    return               SizedBox(

      height: MediaQuery
          .of(context)
          .size
          .height * .17,

      child: ListView.builder(
padding: EdgeInsets.symmetric(vertical: 8),
        shrinkWrap: true,
        itemCount: 4,

        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        //clipBehavior:Clip.none,

        itemBuilder: (context,index){
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Column(
                children: [

                  CircleAvatar(
                      radius: 35,


                      backgroundColor: Colors.white,
                      child:Image.asset(images[index].assetName  )),
                  SizedBox(height: 5,),
                  Text(title[index],style: TextStyle(
                      fontSize: 14,color: Colors.white
                  ),),

                ],
              ),
            ),
          );



        },



      ),
    )
    ;
  }
}

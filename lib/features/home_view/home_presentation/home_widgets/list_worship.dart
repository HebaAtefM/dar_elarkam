import 'package:flutter/material.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/daily_worship.dart';

class ListWorship extends StatelessWidget {
   ListWorship({Key? key}) : super(key: key);
  List<String> title=[
    "الصلاه",
    "الأذكار",

    "التدبر",
  ];
  List<String> subtitle=[
    "2/5",
    "8/15"
    ,
    "10/10"

  ];
  List<AssetImage>  images=[
    AssetImage("assets/images/icon1.png") ,
    AssetImage("assets/images/icon2.png") ,
    AssetImage("assets/images/icon3.png") ,



  ];
  @override
  Widget build(BuildContext context) {
    return               SizedBox(
      height:   MediaQuery
          .of(context)
          .size
          .height * .25,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: DailyWorshipBody(image: AssetImage(images[index].assetName),
                text: title[index],
                text2: subtitle[index],),
            );
          }


      ),
    );
    ;
  }
}



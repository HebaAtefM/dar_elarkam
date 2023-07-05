import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
    child: Row(

    children:
    [
    //Drawer(),
    GestureDetector(child: Image.asset("assets/images/menu.png")),
    SizedBox(width: 90,),


    Align(
    alignment: Alignment.center
    ,child: Text("دار الارقم",style: TextStyle(fontSize: 19,color: Colors.white),)),


    ],
    ));
  }
}

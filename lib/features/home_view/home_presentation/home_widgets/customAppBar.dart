import 'package:flutter/material.dart';

class CustomAppBarHome extends StatefulWidget {
   CustomAppBarHome({Key? key,required this.drawerkey}) : super(key: key);
  final  drawerkey ;

  @override
  State<CustomAppBarHome> createState() => _CustomAppBarHomeState();
}

class _CustomAppBarHomeState extends State<CustomAppBarHome> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
    child: Row(

    children:
    [
    //Drawer(),
    GestureDetector(
      onTap: (){
        setState(() {
widget.drawerkey.enableOpenDragGesture;
widget.drawerkey.isDrawerOpen;

        });

      },

      child: Image.asset("assets/images/menu.png") ,
    ),



    SizedBox(width: 90,),


    Align(
    alignment: Alignment.center
    ,child: Text("دار الارقم",style: TextStyle(fontSize: 19,color: Colors.white),)),


    ],
    ));
  }
}

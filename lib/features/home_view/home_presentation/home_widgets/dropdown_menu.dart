import 'package:flutter/material.dart';

showmenu(context){
  return  showMenu(

      color: Colors.white.withOpacity(.1),
      elevation: 0,
      context: context,
      position:
      RelativeRect.fromDirectional( textDirection: TextDirection.ltr, start: 200,end: 100,
          top: 440,bottom:200

      ),
      items: [
        PopupMenuItem(

            child:Column(
              children: [
                Container(
                  width: 177,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                      leading:                         Image.asset("assets/images/tasks.png",width: 15,height: 15,),
                      title:                      Text("مهمه اليوميه ")

                  ),
                ),
                Divider(height: 4,),

                Container(
                  width: 177,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Colors.white,


                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                      leading:          Image.asset("assets/images/mushaf.png",width: 15,height: 15,),
                      title:                      Text("استوقفتني ايه ")

                  ),
                ),
                Divider(height: 4,),
                Container(
                  width: 177,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                      leading:                         Image.asset("assets/images/pray.png",width: 15,height: 15,),
                      title:                      Text("عباده  يوميه")

                  ),
                ),
              ],
            )


        ),

      ]


  );




}
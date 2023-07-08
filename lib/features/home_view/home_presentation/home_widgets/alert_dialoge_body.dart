

import 'package:flutter/material.dart';

class AlertBody extends StatelessWidget {
  const AlertBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(

        iconPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        title:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(

                      color: Colors.black,),
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(1),
                      //     topLeft: Radius.circular(1),bottomRight: Radius.circular(1),bottomLeft: Radius.circular(1))),
                  child: Icon(Icons.close,color: Colors.white,))),
              SizedBox(width: 80,),

              Text("البقره",
                style: TextStyle(fontSize: 23,color: Colors.black),),

            ],
          ),
        ),
        content:Text("في قلوبهم مرض فزادهم الله مرضا ولهم عذاب اليم بما كانو يكذبون",
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 16,color: Color(0xff3E3E46)),) ,
        alignment: Alignment.centerRight,

      ),
    );
  }
}

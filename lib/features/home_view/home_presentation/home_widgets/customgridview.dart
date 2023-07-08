


import 'package:flutter/material.dart';
import 'package:myapp/core/utiles/assets.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/customAppBar.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/custom_listview.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/daily_worship.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/list_worship.dart';

import '../../../splash_view/presentation/widgets/custom_app_bar.dart';

class CustomlistView extends StatelessWidget {
  CustomlistView({Key? key,required this.drawercontroller}) : super(key: key);

  final drawercontroller;

   Widget build(BuildContext context) {
    return
    Stack(
        children:[
          Image.asset(Assets.back,height: 300,),

          Container(
            width: 414,
            height: 380,
            decoration: BoxDecoration(
              color: Color(0xff6054FF).withOpacity(.6),
              borderRadius: BorderRadius.only(

                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30) ),

            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                CustomAppBarHome(drawerkey: drawercontroller,),
                SizedBox(height: 10,),
                CustomListView(),

                SizedBox(height: 10,),
                ListWorship(),



              ],
            ),

          ),
      ]

    );
  }
}

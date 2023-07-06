import 'package:flutter/material.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/grid_video.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/thelast_read.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/theprayer.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/customgridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Container(
          child:Column(
            children: [
              CustomlistView(),
              SizedBox(height: 10,),
              TheLastRead(),
              SizedBox(height: 3,),

              ThePrayer(),
              Padding


                (
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  height: 25,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
Text("العلم الشرعي",style: TextStyle(fontSize: 19,color: Color(0xff02001D)),),
                      Text("عرض الكل",style: TextStyle(fontSize: 14,color: Color(0xff02001D)),),
                  ]
                )


                  ),
                ),
              GridVideo(),
              SizedBox(height: 5,),


//dropdown menu




            ],
          )

        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorColumn extends StatelessWidget {
  SmoothPageIndicatorColumn({Key? key, required this.controller, required this.list,required this.currentpage}) : super(key: key);
  final PageController controller;
 final int currentpage;
  final List list;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SmoothPageIndicator(
            controller: controller,
            effect:ScrollingDotsEffect (

              dotColor: Colors.grey,
              activeDotColor: Colors.blue,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 5.0,
            ),
            count: list.length,
          ),
        ),
       //SizedBox(height: 10,),
        currentpage==2?
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 20),
          child: GestureDetector(
            onTap: (){
              GoRouter.of(context).push('/home');
            },
            child: Center(
              child: Container(
                width: 183,
                  height: 55,
                  decoration:   BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff6054FF),


                  ),

                  child: Center(child: Text("البدأ الان",style: TextStyle(fontSize: 19,color: Colors.white),))),
            ),
          ),
        ):Text(""),
      ],
    );
  }
}

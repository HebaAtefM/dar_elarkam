
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
   SplashViewBody({Key? key}) : super(key: key);


  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>{
  //   with SingleTickerProviderStateMixin {
  // late AnimationController animationController;
  // late Animation<Offset> slidingAnimation;
  // // initstate

  @override
  void initState() {
    //initslidAnimation();
    navigatetoonboarding();
    super.initState();
  }

  @override
  void dispose() {
  //  animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
void navigatetoonboarding (){

  Future.delayed(Duration(seconds: 5),(){
     GoRouter.of(context).push('/onboarding');

  });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
           Color( 0xffF1F0FF) , Color(0xffFBFBFF) , Color(0xffE3E1FF )


          // Color(0xffE3E1FF),
          //
          // Color(0xffE3E1FF),
          // Color(0xffE3E1FF),


        ]

        )
      ),
      child: Center(child: Image.asset("assets/images/logo.png")),
    );
  }

//   void initslidAnimation() {
//     animationController =
//         AnimationController(vsync: this, duration: Duration(minutes: 1));
//     slidingAnimation =
//         Tween<Offset>(begin: Offset(0, 2), end: Offset.zero).animate(
//             animationController);
// // slidingAnimation.addListener(() {
// //   setState(() {
// //
// //   });
// // });
//
//     animationController.forward();
//   }
}
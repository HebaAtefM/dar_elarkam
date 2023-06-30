


import 'package:flutter/material.dart';
import 'package:myapp/features/splash_view/presentation/pages/splash_view_body.dart';

class SplashView extends StatelessWidget {
   SplashView({Key? key,}) : super(key: key);
//Apimodel apimodel;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SplashViewBody(),
    );
  }
}

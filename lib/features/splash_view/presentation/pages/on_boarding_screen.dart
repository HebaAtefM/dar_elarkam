

import 'package:flutter/material.dart';
import 'package:myapp/features/splash_view/presentation/widgets/onboard_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:  OnBoardBody(),
    );
  }
}

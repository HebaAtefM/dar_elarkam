

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      GoRouter.of(context).push('/home');

    }, child: Text("تخطي",style: TextStyle(color: Color(0xff6054FF),fontSize: 16)

    ),);

  }
}

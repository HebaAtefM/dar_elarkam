import 'package:flutter/material.dart';
import 'package:myapp/core/routers.dart';
import 'package:myapp/core/themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: themeData,
        routerConfig: AppRoute.router,
        debugShowCheckedModeBanner: false,
    );
    }
}



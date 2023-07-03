import 'package:flutter/material.dart';
import 'package:myapp/core/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedLabelStyle:TextStyle(
              color: Colors.black,
              fontSize: 8,

            ),
          unselectedLabelStyle: TextStyle(color: Colors.black,fontSize: 8),
          showSelectedLabels: true,
          showUnselectedLabels: true
        )
      ),
        routerConfig: AppRoute.router,
        debugShowCheckedModeBanner: false,
    );
    }
}




import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/homeview.dart';
import 'package:myapp/features/splash_view/presentation/pages/on_boarding_screen.dart';
import 'package:myapp/features/splash_view/presentation/pages/splash_screen.dart';

abstract class AppRoute{

  static  final  router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return  SplashView();
        },

      ),
      GoRoute(
        path: '/onboarding',
        builder: (BuildContext context, GoRouterState state) {
          return OnBoardingScreen();
        },

      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return HomeView();
        },

      ),

    ],
  );









}
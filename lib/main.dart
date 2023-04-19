import 'package:flutter/material.dart';
import 'package:gtr/provider/market.dart';
import 'package:gtr/screens/dashboard.dart';
import 'package:gtr/screens/dashboardui.dart';
import 'package:gtr/screens/second_screen.dart';
import 'package:gtr/screens/splash_screen.dart';
import 'package:gtr/screens/third_screen.dart';
import 'package:gtr/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context)=> Markeet(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName:(context)=> SplashScreen(),
        WelcomeScreen.routeName:(context)=> WelcomeScreen(),
        SecondScreen.routeName:(context)=> SecondScreen(),
        ThirdScreen.routeName:(context)=> ThirdScreen(),
        DashboardScreen.routeName:(context)=> DashboardScreen(),
        DashboardUIScreen.routeName:(context)=> DashboardUIScreen(),
      },)
    );
  }
}

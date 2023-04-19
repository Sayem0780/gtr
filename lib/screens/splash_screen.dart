import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gtr/screens/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  static const routeName ='\splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    // final user=_auth.currentUser;
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushNamed(WelcomeScreen.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: SvgPicture.asset(
              'imge/title.svg',
              fit: BoxFit.contain,
            ),
        ),
      ),
    );
  }
}

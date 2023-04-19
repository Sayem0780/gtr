import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gtr/screens/second_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName ='\welcome';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // final user=_auth.currentUser;
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushNamed(SecondScreen.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'imge/welcome.svg',
            fit: BoxFit.contain,
          ),
          SvgPicture.asset(
            'imge/basket.svg',
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'imge/skip.svg',
                fit: BoxFit.contain,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'imge/panelo.svg',
                    fit: BoxFit.contain,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

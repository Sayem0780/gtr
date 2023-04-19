import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gtr/screens/dashboard.dart';
import 'package:gtr/screens/dashboardui.dart';

class ThirdScreen extends StatefulWidget {
  static const routeName = '\third';
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // final user=_auth.currentUser;
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushNamed(DashboardUIScreen.routeName);
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
          Image.asset('imge/title2 .png',fit: BoxFit.fill,scale: 0.5,),
          SvgPicture.asset(
            'imge/carry.svg',
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    'imge/panelt.svg',
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'imge/panelt.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SvgPicture.asset(
                    'imge/grennpannel.svg',
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

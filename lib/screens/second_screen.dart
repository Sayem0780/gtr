import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gtr/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  static const routeName ='\second';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // final user=_auth.currentUser;
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushNamed(ThirdScreen.routeName);
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
          Image.asset('imge/titleone.png'),
          SvgPicture.asset(
            'imge/ride.svg',
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
                      'imge/grennpannel.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SvgPicture.asset(
                    'imge/panelt.svg',
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

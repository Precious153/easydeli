import 'dart:async';

import 'package:easydeli/Screens/login.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/myColor.dart';
import '../constants/size_config.dart';
import 'onboardingScreen.dart';

// Precious worked on this page
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 2;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'OnboardingScreen');
    });
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, checkFirstSeen);
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _splashScreen = (prefs.getBool('splash_screen') ?? false);

    Navigator.pop(context);
    if (_splashScreen) {
      Navigator.pushNamed(context, 'Login');
    } else {
      await prefs.setBool('splash_screen', true);
      Navigator.pushNamed(context, 'SplashScreen');
    }
  }

  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/truck.png'),
              SizedBox(
                height: getProportionateScreenHeight(11),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myText(
                    data: 'Easy',
                    color: Palette.kColorGold,
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                  ),
                  myText(
                    data: 'Deli',
                    color: Palette.kColorWhite,
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

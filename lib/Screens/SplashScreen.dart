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
  // int? initScreen;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'OnboardingScreen');
    });

    // Timer(Duration(seconds: 5), () async {
    //   SharedPreferences preferences = await SharedPreferences.getInstance();
    //   // var auth = Provider.of<Authentication>(context, listen: false);

    //   initScreen = await preferences.getInt('initScreen');
    //   Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => initScreen == 0 && initScreen == null
    //               ? OnboardingScreen()
    //               : const Login()));
    // });
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

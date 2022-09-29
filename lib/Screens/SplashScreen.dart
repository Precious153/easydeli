import 'package:easydeli/constants/myText.dart';
import 'package:flutter/material.dart';

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
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'OnboardingScreen');
    });
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

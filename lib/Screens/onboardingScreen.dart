import 'package:easydeli/Screens/login.dart';
import 'package:easydeli/Screens/signUp.dart';
import 'package:easydeli/constants/myButton.dart';
import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myImage.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:flutter/material.dart';

import '../constants/size_config.dart';

// Femi worked on this page
class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [const OnboardingScreen1(), OnboardingScreen2()],
      ),
    );
  }
}

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kBackgroundColorWhite,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 94, 21, 0),
        child: SafeArea(
          child: Column(
            children: [
              myImage('assets/images/image 1.png'),
              const SizedBox(height: 84),
              myText(
                  data: "Delivery Made Easier and faster ",
                  color: Palette.kTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              const SizedBox(height: 51),
              myText(
                  data:
                      "Easy Deli  makes your delivery easier , faster and\nreliable .Goods are delivered with a short period of\ntime with affordale Charges.",
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  myButton(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnboardingScreen2()));
                      }),
                      height: 46,
                      width: 89,
                      borderRadius: 8,
                      color: Palette.kBackgroundColor,
                      child: myText(data: 'Next', color: Palette.kColorWhite)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.kBackgroundColorWhite,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(21, 120, 21, 0),
            child: Column(children: [
              myImage('assets/images/image 2.png'),
              const SizedBox(height: 50),
              myText(
                  data: "Delivery Made within a short Period\nof Time",
                  color: Palette.kTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              const SizedBox(height: 90),
              myButton(
                  onTap: (() {
                    Navigator.pushNamed(context, 'Login');
                  }),
                  height: 54,
                  width: getProportionateScreenWidth(336),
                  borderRadius: 8,
                  color: Palette.kBackgroundColor,
                  child: myText(data: 'Login', color: Palette.kColorWhite)),
              const SizedBox(height: 24),
              myButton(
                  onTap: (() {
                    Navigator.pushNamed(context, 'SignUp');
                  }),
                  height: 54,
                  width: getProportionateScreenWidth(336),
                  borderRadius: 8,
                  child: myText(data: 'Sign up', color: Palette.kTextColor)),
            ]),
          ),
        ));
  }
}

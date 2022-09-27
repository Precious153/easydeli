import 'package:easydeli/constants/myText.dart';
import 'package:flutter/material.dart';

import '../constants/myColor.dart';
import '../constants/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
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
              SizedBox(height: getProportionateScreenHeight(11),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myText(data: 'Easy',
                  color: Palette.kColorGold,
                  fontWeight: FontWeight.w700,
                  fontSize: 40,),
                  myText(data: 'Deli',
                    color: Palette.kColorWhite,
                    fontWeight: FontWeight.w700,
                    fontSize: 40,)],
              )
            ],
          ),
        ),
      ),
    );
  }
}

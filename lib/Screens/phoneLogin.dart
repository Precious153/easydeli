import 'package:easydeli/constants/myButton.dart';
import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:easydeli/constants/size_config.dart';
import 'package:flutter/material.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLogin();
}

class _PhoneLogin extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                SizedBox(height: 100),
                myText(
                    data: 'Phone Verification',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                SizedBox(height: 10),
                myText(
                  textAlign: TextAlign.center,
                  data:
                      'We need to register your phone before getting\nstarted !',
                  fontSize: 15,
                ),
                SizedBox(height: 50),
                Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(50),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        SizedBox(width: 60, child: TextField()),
                        SizedBox(
                          width: 10,
                          child: VerticalDivider(
                            color: Palette.kTextColor,
                            thickness: 2,
                            indent: 8,
                            endIndent: 8,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: TextField(),
                          ),
                        )
                      ],
                    )),
                SizedBox(height: 20),
                myButton(
                  onTap: () {
                    Navigator.pushNamed(context, 'PhoneLoginVerify');
                  },
                  height: 54,
                  width: double.infinity,
                  borderRadius: 8,
                  color: Palette.kBackgroundColor,
                  child: myText(
                      data: 'Send code',
                      fontSize: 15,
                      color: Palette.kColorWhite),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

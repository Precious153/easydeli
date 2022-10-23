import 'package:easydeli/constants/controllers.dart';
import 'package:easydeli/constants/myButton.dart';
import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:easydeli/constants/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  static String verify = "";

  @override
  State<PhoneLogin> createState() => _PhoneLogin();
}

class _PhoneLogin extends State<PhoneLogin> {
  var phone = "";
  @override
  void initState() {
    countryCode.text = '+234';
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'Login');
            },
            icon:
                Icon(Icons.arrow_back_ios, color: Palette.kTextColor, size: 20),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                const SizedBox(height: 70),
                const myText(
                    data: 'Phone Verification',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                const SizedBox(height: 10),
                const myText(
                  textAlign: TextAlign.center,
                  data:
                      'We need to register your phone before getting\nstarted !',
                  fontSize: 15,
                ),
                const SizedBox(height: 50),
                Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(54),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(width: 1, color: Palette.kTextColor)),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        SizedBox(
                            width: 50,
                            child: TextField(
                              controller: countryCode,
                              decoration: const InputDecoration(
                                  border: InputBorder.none),
                            )),
                        SizedBox(
                          width: 10,
                          child: VerticalDivider(
                            color: Palette.kTextColor,
                            thickness: 2,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: SizedBox(
                            child: TextField(
                              onChanged: (value) {
                                phone = value;
                              },
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter phone number"),
                            ),
                          ),
                        )
                      ],
                    )),
                const SizedBox(height: 20),
                myButton(
                  onTap: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: countryCode.text + phone,
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {
                        if (e.code == 'invalid-phone-number') {
                          print('The provided phone number is not valid.');
                        }
                      },
                      codeSent: (String verificationId, int? resendToken) {
                        PhoneLogin.verify = verificationId;
                        Navigator.pushNamed(context, 'PhoneLoginVerify');
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
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

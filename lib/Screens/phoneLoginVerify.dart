import 'package:easydeli/Screens/phoneLogin.dart';
import 'package:easydeli/constants/controllers.dart';
import 'package:easydeli/constants/myButton.dart';
import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PhoneLoginVerify extends StatefulWidget {
  const PhoneLoginVerify({super.key});

  @override
  State<PhoneLoginVerify> createState() => _PhoneLoginVerifyState();
}

class _PhoneLoginVerifyState extends State<PhoneLoginVerify> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var code = "";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'PhoneLogin');
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
                Pinput(
                  length: 6,
                  showCursor: true,
                  onChanged: (value) {
                    code = value;
                  },
                ),
                const SizedBox(height: 20),
                myButton(
                    onTap: () async {
                      setState(() {
                        isLoading = true;
                      });
                      try {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: PhoneLogin.verify,
                                smsCode: code);
                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        // ignore: use_build_context_synchronously
                        Navigator.pushNamedAndRemoveUntil(
                            context, 'HomePage', (route) => false);
                      } catch (e) {
                        print('Wrong OTP');
                      }
                      Future.delayed(const Duration(seconds: 10)).then((value) {
                        isLoading = false;
                        setState(() {});
                      });
                    },
                    height: 54,
                    width: double.infinity,
                    borderRadius: 8,
                    color: Palette.kBackgroundColor,
                    child: isLoading == false
                        ? Center(
                            child: myText(
                                data: 'Verify code',
                                fontSize: 15,
                                color: Palette.kColorWhite),
                          )
                        : const Center(
                            child: CircularProgressIndicator(
                                color: Colors.white))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, 'PhoneLoginVerify');
                      },
                      child: myText(
                        data: 'Edit phone number?',
                        textAlign: TextAlign.center,
                        color: Palette.kTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

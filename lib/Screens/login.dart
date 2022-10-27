import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:easydeli/constants/myTextFormField.dart';
import 'package:easydeli/constants/size_config.dart';
import 'package:easydeli/constants/validator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../constants/controllers.dart';
import '../constants/myButton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(73),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myText(
                      data: 'Login',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                myText(
                  data: 'Email Address',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                KTextFormField(
                    hint: "Email Address",
                    textEditingController: emailController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: Validator().validateEmail,
                    width: double.infinity,
                    isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(16)),
                myText(
                  data: 'Password',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                  hint: "password",
                  textEditingController: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: toggle,
                  passwordIcon: GestureDetector(
                      onTap: () {
                        if (toggle == true) {
                          setState(() {
                            toggle = false;
                          });
                        } else {
                          setState(() {
                            toggle = true;
                          });
                        }
                      },
                      child: toggle == true
                          ? Icon(
                              Icons.visibility_off_outlined,
                              color: Palette.kBackgroundColor,
                            )
                          : Icon(Icons.visibility,
                              color: Palette.kBackgroundColor)),
                  validator: Validator().validatePassword,
                  width: double.infinity,
                  isPasswordType: true,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'ForgotPassword');
                      },
                      child: myText(
                        data: 'Forgot password?',
                        textAlign: TextAlign.center,
                        color: Palette.kTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                myButton(
                    onTap: () async {
                      setState(() {
                        isLoading = true;
                      });
                      await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text)
                          .then((value) {
                        print('Login successfully');
                        Navigator.pushNamed(context, 'HomePage');
                      }).onError((error, stackTrace) {
                        print("Login failed ${error.toString()}");
                      });
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
                                data: 'Login',
                                color: Palette.kColorWhite,
                                fontSize: 15),
                          )
                        : const Center(
                            child: CircularProgressIndicator(
                                color: Colors.white))),
                SizedBox(height: getProportionateScreenHeight(20)),
                myButton(
                    onTap: () {
                      Navigator.pushNamed(context, 'PhoneLogin');
                    },
                    height: 54,
                    width: double.infinity,
                    borderRadius: 8,
                    color: Palette.kBackgroundColor,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Icon(Icons.phone,
                              size: 30, color: Palette.kColorGold),
                        ),
                        myText(
                            data: 'Login with phone number',
                            fontSize: 15,
                            color: Palette.kColorWhite),
                      ],
                    )),
                SizedBox(height: getProportionateScreenHeight(20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

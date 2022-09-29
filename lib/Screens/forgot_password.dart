import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/size_config.dart';
import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/validator.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 bool toggle = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColorWhite,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(73),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myText(data: 'Forgot Password',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(77),),
                myText(data: 'Enter Phone Number',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: " Enter Phone Number",
                    textEditingController: phoneController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: Validator().validatePhoneNumber,
                    width: double.infinity, isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(8),),
                myText(data: 'Enter Verification Code',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: "Verification Code",
                    textEditingController: phoneController,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    validator: Validator().validateCode,
                    width: double.infinity, isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(8),),
                myText(data: 'Password',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: "password",
                  textEditingController: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: toggle,
                  passwordIcon:   GestureDetector(
                      onTap: (){
                        if(toggle==true){
                          setState(() {
                            toggle=false;
                          });
                        } else{
                          setState(() {
                            toggle =true;
                          });
                        }
                      },
                      child: toggle== true ?
                      Icon(Icons.visibility_off_outlined,
                        color: Palette.kBackgroundColor,) :
                      Icon(Icons.visibility,
                          color: Palette.kBackgroundColor) ),
                  validator: Validator().validatePassword,
                  width: double.infinity, isPasswordType: true,
                ),
                SizedBox(height: getProportionateScreenHeight(135),),
                myButton(
                    height: 54,
                    width: double.infinity,
                    borderRadius: 8,
                    color: Palette.kBackgroundColor,
                    child: myText(data: 'Login', color: Palette.kColorWhite)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

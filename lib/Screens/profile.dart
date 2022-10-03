import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myImage.dart';
import 'package:flutter/material.dart';

import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/size_config.dart';
import '../constants/validator.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColorWhite,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(52),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'HomePage');
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: getProportionateScreenWidth(100),
                  ),
                  myText(
                    data: 'Profile',
                    textAlign: TextAlign.center,
                    color: Palette.kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              Center(child: myImage('assets/images/Ellipse 65.png')),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              Center(
                child: myText(
                  data: 'Adedoyin Adebayo',
                  textAlign: TextAlign.center,
                  color: Color(0xffA09892),
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              myText(
                data: 'First Name',
                textAlign: TextAlign.center,
                color: Palette.kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              KTextFormField(
                  hint: "Adedoyin",
                  textEditingController: firstNameController,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  validator: Validator().validateFullName,
                  width: double.infinity,
                  isPasswordType: false),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              myText(
                data: 'Last Name',
                textAlign: TextAlign.center,
                color: Palette.kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              KTextFormField(
                  hint: "Adebayo",
                  textEditingController: lastNameController,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  validator: Validator().validateLastName,
                  width: double.infinity,
                  isPasswordType: false),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              myText(
                data: 'Email Address',
                textAlign: TextAlign.center,
                color: Palette.kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              KTextFormField(
                  hint: "adedoyin@gmail.com",
                  textEditingController: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  validator: Validator().validateEmail,
                  width: double.infinity,
                  isPasswordType: false),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              myText(
                data: 'Phone Number',
                textAlign: TextAlign.center,
                color: Palette.kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              KTextFormField(
                  hint: "07051086838",
                  textEditingController: phoneController,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  validator: Validator().validatePhoneNumber,
                  width: double.infinity,
                  isPasswordType: false),
            ],
          ),
        ),
      ),
    );
  }
}

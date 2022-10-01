import 'package:flutter/material.dart';

import '../constants/myColor.dart';
import '../constants/myText.dart';
import '../constants/size_config.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor:Palette.kBackgroundColorWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(52),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.popAndPushNamed(context, 'HomePage');
                    },
                        icon: Icon(Icons.arrow_back_ios)
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(65),
                    ),
                    myText(
                      data: 'Settings ',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(55),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/empty-wallet-remove.png'),
                    SizedBox(width:getProportionateScreenWidth(18),),
                    myText(data: 'Payment Settings',
                      color: Palette.kTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios_outlined,
                        color: Palette.kTextColor,),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(23),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/user-cirlce-add.png'),
                    SizedBox(width:getProportionateScreenWidth(18),),
                    myText(data: 'Personal Information',
                      color: Palette.kTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios_outlined,
                          color: Palette.kTextColor,),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(23),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/global.png'),
                    SizedBox(width:getProportionateScreenWidth(18),),
                    myText(data: 'Language',
                      color: Palette.kTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,),
                    Spacer(),
                    Row(
                      children: [
                        myText(data: ' Default(English)',
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(23),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/convertshape-2.png'),
                    SizedBox(width:getProportionateScreenWidth(18),),
                    myText(data: 'Support',
                      color: Palette.kTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios_outlined,
                          color: Palette.kTextColor,),
                      ],
                    ),
                  ],
                ),
          SizedBox(height: getProportionateScreenHeight(32),),
          Row(
            children: [
              Image.asset('assets/images/cil_account-logout.png'),
              SizedBox(width:getProportionateScreenWidth(18),),
              myText(data: 'Log Out',
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: 18,),
        ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
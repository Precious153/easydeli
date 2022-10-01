import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myColor.dart';
import '../constants/myImage.dart';
import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/size_config.dart';
import '../constants/validator.dart';

class Home extends StatelessWidget {
   Home({
    Key? key,
  }) : super(key: key);

  TextEditingController codeEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: SafeArea(
          child: Column(
              children: [
            SizedBox(
              height: getProportionateScreenHeight(52),
            ),
            Row(
              children: [
                myText(
                  data: 'Hello, ',
                  color: Palette.kTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                myText(
                  data: 'User FirstName',
                  color: Palette.kTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ],
            ),
            const SizedBox(height: 6),
            KTextFormField(
                hint: 'Enter tracking code',
                textEditingController: codeEditingController,
                keyboardType: TextInputType.name,
                obscureText: false,
                validator: Validator().validateFullName,
                width: getProportionateScreenWidth(336),
                isPasswordType: false),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myButton2(
                    onTap: (){
                      Navigator.pushNamed(context, 'DeliverPackage');
                    },
                    height: 134,
                    width: getProportionateScreenWidth(156),
                    color: Palette.kColorWhite,
                    borderRadius: 5,
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        myImage('assets/images/box-tick.png'),
                        const SizedBox(height: 20),
                        const myText(data: 'Deliver Package')
                      ],
                    )),
                const Spacer(),
                myButton2(
                  onTap: (){
                    Navigator.pushNamed(context, 'FundWallet');
                  },
                    height: 134,
                    width: getProportionateScreenWidth(156),
                    color: Palette.kColorWhite,
                    borderRadius: 5,
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        myImage('assets/images/empty-wallet.png'),
                        const SizedBox(height: 20),
                        const myText(data: 'Fund Wallet')
                      ],
                    )),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myButton2(

                    height: 134,
                    width: getProportionateScreenWidth(156),
                    color: Palette.kColorWhite,
                    borderRadius: 5,
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        myImage('assets/images/align-left.png'),
                        const SizedBox(height: 20),
                        const myText(data: 'Track History')
                      ],
                    )),
                const Spacer(),
                myButton2(
                    height: 134,
                    width: getProportionateScreenWidth(156),
                    color: Palette.kColorWhite,
                    borderRadius: 5,
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        myImage('assets/images/bag-2.png'),
                        const SizedBox(height: 20),
                        const myText(data: 'Track an Item')
                      ],
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

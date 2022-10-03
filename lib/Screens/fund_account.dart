import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myColor.dart';
import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/size_config.dart';
import '../constants/validator.dart';

class FundWallet extends StatefulWidget {
  const FundWallet({Key? key}) : super(key: key);

  @override
  State<FundWallet> createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  TextEditingController fundController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(52),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: getProportionateScreenWidth(65),
                ),
                myText(
                  data: 'Fund Wallet',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            KTextFormField(
                hint: "Amount",
                textEditingController: fundController,
                keyboardType: TextInputType.number,
                obscureText: false,
                validator: Validator().validateFullName,
                width: double.infinity,
                isPasswordType: false),
            SizedBox(
              height: getProportionateScreenHeight(75),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myButton2(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  height: getProportionateScreenHeight(54),
                  width: getProportionateScreenWidth(117),
                  color: Colors.red,
                  borderRadius: 8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                      Center(
                        child: myText(
                          data: 'Cancel',
                          color: Palette.kBackgroundColorWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                myButton2(
                  onTap: () {
                    Navigator.pushNamed(context, 'Payment');
                  },
                  height: getProportionateScreenHeight(54),
                  width: getProportionateScreenWidth(117),
                  color: Palette.kBackgroundColor,
                  borderRadius: 8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                      Center(
                        child: myText(
                          data: 'Fund',
                          color: Palette.kBackgroundColorWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

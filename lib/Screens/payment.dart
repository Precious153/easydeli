import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myColor.dart';
import '../constants/myText.dart';
import '../constants/size_config.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(52),
              ),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      icon: Icon(Icons.arrow_back_ios)
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(65),
                  ),
                  myText(
                    data: 'Select Payment Method',
                    textAlign: TextAlign.center,
                    color: Palette.kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(45),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myButton2(
                    height: getProportionateScreenHeight(118),
                    width: getProportionateScreenWidth(153),
                    color: Palette.kBackgroundColorWhite,
                    borderRadius: 8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        myText(data: 'Cash',
                          color: Palette.kTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(34),
                        ),
                        myText(data: 'N4,500',
                          color: Palette.kTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  myButton2(
                    height: getProportionateScreenHeight(118),
                    width: getProportionateScreenWidth(153),
                    color: Palette.kBackgroundColor,
                    borderRadius: 8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        myText(data: 'Wallet',
                          color: Palette.kTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(34),
                        ),
                        myText(data: 'N4,000',
                          color: Palette.kTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(24),
              ),
              myText(data: 'Fund Wallet?',
                color: Palette.kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


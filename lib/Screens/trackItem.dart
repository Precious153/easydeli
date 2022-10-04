import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myColor.dart';
import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/size_config.dart';
import '../constants/validator.dart';

class TrackItem extends StatefulWidget {
  const TrackItem({Key? key}) : super(key: key);

  @override
  State<TrackItem> createState() => _TrackItemState();
}

class _TrackItemState extends State<TrackItem> {
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
                      Navigator.popAndPushNamed(context, 'HomePage');
                    },
                    icon: const myButton2(
                        height: 30,
                        width: 30,
                        borderRadius: 8,
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                          ),
                        ))),
                const SizedBox(width: 60),
                myText(
                  data: 'Input Order ID',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(35),
            ),
            KTextFormField(
                hint: "XY56u8HJ",
                textEditingController: fundController,
                keyboardType: TextInputType.text,
                obscureText: false,
                validator: Validator().validateFullName,
                width: double.infinity,
                isPasswordType: false),
            SizedBox(height: getProportionateScreenHeight(42)),
            myButton2(
              onTap: () {
                Navigator.pushNamed(context, 'TrackItemMap');
              },
              height: getProportionateScreenHeight(52),
              width: getProportionateScreenWidth(200),
              color: Palette.kBackgroundColor,
              borderRadius: 8,
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Center(
                    child: myText(
                      data: 'Track Item',
                      color: Palette.kBackgroundColorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

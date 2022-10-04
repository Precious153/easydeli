import 'package:easydeli/constants/myColor.dart';
import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myImage.dart';
import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/size_config.dart';
import '../constants/validator.dart';

class DeliverPackage extends StatefulWidget {
  const DeliverPackage({Key? key}) : super(key: key);

  @override
  State<DeliverPackage> createState() => _DeliverPackageState();
}

class _DeliverPackageState extends State<DeliverPackage> {
  TextEditingController itemNameController = TextEditingController();
  TextEditingController itemDescriptionController = TextEditingController();
  TextEditingController pickUpController = TextEditingController();
  TextEditingController deliveryController = TextEditingController();
  TextEditingController reciepentController = TextEditingController();

  // Femi and Bayo Worked on this

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, 'HomePage');
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: getProportionateScreenWidth(65),
                    ),
                    myText(
                      data: 'Deliver A Package ',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(27),
                ),
                myText(
                  data: 'Item Name',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                    hint: "Item Name",
                    textEditingController: itemNameController,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    validator: Validator().validateFullName,
                    width: double.infinity,
                    isPasswordType: false),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                myText(
                  data: 'Item Description',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                    hint: "item Description",
                    textEditingController: itemDescriptionController,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    validator: Validator().validateLastName,
                    width: double.infinity,
                    isPasswordType: false),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myButton2(
                        height: 80,
                        width: getProportionateScreenWidth(80),
                        color: Palette.kColorWhite,
                        borderRadius: 5,
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            myImage('assets/images/truckF.png'),
                            const SizedBox(height: 10),
                            const myText(data: 'Truck')
                          ],
                        )),
                    myButton2(
                        height: 80,
                        width: getProportionateScreenWidth(80),
                        color: Palette.kColorWhite,
                        borderRadius: 5,
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            myImage('assets/images/car.png'),
                            const SizedBox(height: 20),
                            const myText(data: 'Car')
                          ],
                        )),
                    myButton2(
                        height: 80,
                        width: getProportionateScreenWidth(80),
                        color: Palette.kBackgroundColor,
                        borderRadius: 5,
                        child: Column(
                          children: [
                            const SizedBox(height: 0),
                            myImage('assets/images/humbleicons_bike.png'),
                            SizedBox(height: getProportionateScreenHeight(0)),
                            const myText(
                              data: 'Bike',
                              color: Colors.white,
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                myText(
                  data: 'PickUp Address',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                    hint: "PickUp Address",
                    textEditingController: pickUpController,
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                    validator: Validator().validateFullName,
                    width: double.infinity,
                    isPasswordType: false),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                myText(
                  data: 'Delivery Address',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                    hint: "Delivery Address",
                    textEditingController: deliveryController,
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                    validator: Validator().validateLastName,
                    width: double.infinity,
                    isPasswordType: false),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                myText(
                  data: 'Reciepent Contact',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                    hint: "Reciepent Contact",
                    textEditingController: reciepentController,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    validator: Validator().validateLastName,
                    width: double.infinity,
                    isPasswordType: false),
                SizedBox(
                  height: getProportionateScreenHeight(35),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    myButton(
                        onTap: () {
                          // Navigator.pushReplacementNamed(context, 'HomePage');
                        },
                        height: 33,
                        width: getProportionateScreenWidth(83),
                        borderRadius: 5,
                        color: Palette.kBackgroundColor,
                        child:
                            myText(data: 'Next', color: Palette.kColorWhite)),
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

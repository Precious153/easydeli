import 'package:easydeli/constants/myButton.dart';
import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myImage.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:easydeli/constants/size_config.dart';
import 'package:flutter/material.dart';

class TrackHistory extends StatefulWidget {
  const TrackHistory({super.key});

  @override
  State<TrackHistory> createState() => _TrackHistoryState();
}

class _TrackHistoryState extends State<TrackHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kColorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 35, 22, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    const Spacer(),
                    myText(
                      data: 'Track History',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/trash.png',
                      color: Colors.red,
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
                const SizedBox(height: 30),
                StreamBuilder(builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return SizedBox(
                      height: 800,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 23),
                              child: Container(
                                height: getProportionateScreenHeight(65),
                                decoration: BoxDecoration(
                                    color: Palette.kColorWhite,
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 1),
                                        blurRadius: 0,
                                        color: const Color(0xff000000)
                                            .withOpacity(0.3),
                                      ),
                                      BoxShadow(
                                        color: const Color(0xff000000)
                                            .withOpacity(0.3),
                                        offset: const Offset(-1, 0),
                                      ),
                                      BoxShadow(
                                        color: const Color(0xff000000)
                                            .withOpacity(0.3),
                                        offset: const Offset(1, 0),
                                      )
                                    ]),
                                child: Row(
                                  children: [
                                    myButton(
                                        height: 45,
                                        width: 45,
                                        borderRadius: 8,
                                        child: myImage(
                                            'assets/images/logos_parcel-icon.png')),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        const Spacer(),
                                        const myText(
                                          data: 'Documentation Delivery',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: const [
                                            myText(
                                                data: '28/09/22',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                            SizedBox(width: 15),
                                            myText(
                                                data: '09:34am',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          ],
                                        ),
                                        const Spacer()
                                      ],
                                    ),
                                    const Spacer(),
                                    myButton(
                                        height: 37,
                                        width: 72,
                                        borderRadius: 5,
                                        color: Palette.kBackgroundColor,
                                        child: myText(
                                          data: 'Delivered',
                                          fontSize: 13,
                                          color: Palette.kColorWhite,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

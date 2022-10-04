import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myText.dart';
import '../constants/size_config.dart';

class TrackItemMap extends StatefulWidget {
  const TrackItemMap({Key? key}) : super(key: key);

  @override
  State<TrackItemMap> createState() => _TrackItemMapState();
}

class _TrackItemMapState extends State<TrackItemMap> {
  TextEditingController fundController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 52, 20, 20),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 15,
            ),
            myButton(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: const myText(data: 'MAP')),
            const SizedBox(height: 20),
            const myText(
                data: 'Driver left Pick up Address',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff5B4E4E)),
            const SizedBox(height: 9),
            const myText(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff5B4E4E),
                data: 'Driver on its way to Delivery Address')
          ],
        )),
      ),
    );
  }
}

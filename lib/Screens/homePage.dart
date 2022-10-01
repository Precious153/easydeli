import 'dart:io';

import 'package:easydeli/Screens/profile.dart';
import 'package:easydeli/Screens/settings.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';


import 'deliver_package.dart';
import 'home.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int curretTab =0;
  final List<Widget> screens = [
    Home(),
    DeliverPackage(),
    Settings(),
    Profile(),
  ];

  final PageStorageBucket bucket =  PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Home();
                          curretTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_filled,
                            color:curretTab==0 ?
                            Colors.black:Colors.grey,),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = DeliverPackage();
                          curretTab=1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_car_filled,
                            color:curretTab==1 ?
                            Colors.black:Colors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Settings();
                          curretTab=2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings,
                            color:curretTab==2 ?
                            Colors.black:Colors.grey,),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen =Profile();
                          curretTab=3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle_outlined,
                            color:curretTab==3 ?
                            Colors.black:Colors.grey,),
                        ],
                      ),
                    ),
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


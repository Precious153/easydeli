import 'package:easydeli/Screens/homePage.dart';
import 'package:easydeli/Screens/login.dart';
import 'package:easydeli/Screens/onboardingScreen.dart';
import 'package:easydeli/Screens/profile.dart';
import 'package:easydeli/Screens/settings.dart';
import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';
import 'Screens/deliver_package.dart';
import 'Screens/forgot_password.dart';
import 'Screens/fund_account.dart';
import 'Screens/payment.dart';
import 'Screens/signUp.dart';

// Bayo and Femi Worked on this
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        'OnboardingScreen': (context) => OnboardingScreen(),
        'Login': (context) => const Login(),
        'SignUp': (context) => SignUp(),
        'ForgotPassword': (context) => const ForgotPassword(),
        'HomePage': (context) => HomePage(),
        'DeliverPackage': (context) => DeliverPackage(),
        'FundWallet': (context) => FundWallet(),
        'Payment': (context) => Payment(),
      },
    );
  }
}
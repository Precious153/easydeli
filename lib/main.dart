import 'package:easydeli/Screens/homePage.dart';
import 'package:easydeli/Screens/login.dart';
import 'package:easydeli/Screens/onboardingScreen.dart';
import 'package:easydeli/Screens/trackHistory.dart';
import 'package:easydeli/Screens/trackItem.dart';
import 'package:easydeli/Screens/trackItemMap.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';
import 'Screens/deliver_package.dart';
import 'Screens/forgot_password.dart';
import 'Screens/fund_account.dart';
import 'Screens/payment.dart';
import 'Screens/signUp.dart';

// Bayo and Femi Worked on this
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        'HomePage': (context) => const HomePage(),
        'DeliverPackage': (context) => const DeliverPackage(),
        'FundWallet': (context) => const FundWallet(),
        'Payment': (context) => const Payment(),
        'TrackHistory': (context) => const TrackHistory(),
        'TrackItem': (context) => const TrackItem(),
        'TrackItemMap': (context) => const TrackItemMap(),
      },
    );
  }
}

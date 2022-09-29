import 'package:easydeli/Screens/login.dart';
import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';
import 'Screens/forgot_password.dart';
import 'Screens/signUp.dart';

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
        'Login': (context) => Login(),
        'SignUp': (context) => SignUp(),
        'ForgotPassword': (context) => ForgotPassword(),
      },
    );
  }
}

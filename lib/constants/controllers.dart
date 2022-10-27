import 'package:flutter/material.dart';

TextEditingController phoneController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController countryCode = TextEditingController();

bool toggle = true;
bool isLoading = false;
String selectedCountry = "Country";
final formKey = GlobalKey<FormState>();

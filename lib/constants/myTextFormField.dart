import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myTextFormField  extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPasswordType;
  final IconData? icon;
  final Widget? passwordIcon;
  final validator;
  final double width;

  const myTextFormField({super.key,this.passwordIcon, required this.hint, required this.textEditingController, required this.keyboardType, required this.obscureText, required this.icon, required this.validator, required this.width, required this.isPasswordType});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      controller: textEditingController,
      obscureText: obscureText,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      decoration: InputDecoration(
        suffixIcon: isPasswordType ? passwordIcon : null,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: GoogleFonts.outfit(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

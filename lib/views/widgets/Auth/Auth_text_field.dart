import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final Widget labelText;
  final bool obsecureText;
  final Widget icon;
  final double size;

  AuthTextField(
      {required this.keyboardType,
      required this.icon,
      required this.labelText,
      required this.obsecureText,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      obscureText: obsecureText,
      keyboardType: keyboardType,
      style: GoogleFonts.poppins(fontSize: size),
      textInputAction: TextInputAction.none,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Color(0xffE7E7F2),
        label: labelText,
        labelStyle: GoogleFonts.poppins(fontSize: size, color: Colors.black),
        prefixIcon: icon,
        prefixIconColor: const Color(0xff000221),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}

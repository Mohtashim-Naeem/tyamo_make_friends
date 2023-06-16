import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/views/Auth/login.dart';

import '../widgets/Auth/Auth_heading.dart';
import '../widgets/Auth/Auth_text_field.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerbtnController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000221),
        centerTitle: true,
        title: Text('Tyamo',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: [
            SizedBox(height: 40),
            AuthHeading(
              fontsize: 16.sp,
              logo: 'assets/images/log.png',
              mainText: 'Sign up to Tyamo',
              subText: 'Get connected with \nyour patner ',
              logosize: 25.sp,
            ),
            SizedBox(height: 50),
            AuthTextField(
                keyboardType: TextInputType.emailAddress,
                icon: Icon(Icons.alternate_email),
                labelText: Text('Email'),
                obsecureText: false,
                size: 14.sp),
            SizedBox(height: 15),
            AuthTextField(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.password_rounded),
                labelText: Text('Password'),
                obsecureText: true,
                size: 14.sp),
            SizedBox(height: 15),
            AuthTextField(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.lock_reset_outlined),
                labelText: Text('Confirm Password'),
                obsecureText: true,
                size: 14.sp),
            SizedBox(height: 30),
            Hero(
              tag: 'Auth',
              child: RoundedLoadingButton(
                  color: Color(0xff00C1AA),
                  borderRadius: 10,
                  width: 2000, // Give it a maximum width to safe frmo error!
                  controller: _registerbtnController,
                  onPressed: () {
                    print('The Register button was pressed');
                  },
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  )),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'By registering, you agree to our terms and conditions',
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff808080)),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Registered?",
                  style: GoogleFonts.poppins(
                      color: Color(0xff5A5B5B),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: Login(), type: PageTransitionType.fade),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                        color: Color(0xff00C1AA),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

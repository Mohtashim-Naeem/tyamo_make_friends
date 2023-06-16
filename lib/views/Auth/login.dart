import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/views/Auth/forgot_pasword.dart';
import 'package:tyamo/views/Auth/register.dart';
import 'package:tyamo/views/Invite/Invite_friends.dart';
import 'package:tyamo/views/Profile/profile_setup.dart';
import 'package:tyamo/views/widgets/Auth/Auth_heading.dart';
import 'package:tyamo/views/widgets/Auth/Auth_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatelessWidget {
  // const Login({super.key});
  final RoundedLoadingButtonController _loginbtnController =
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
              mainText: 'Sign in to Tyamo',
              subText: 'To connect with \nyour patner ',
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
            SizedBox(height: 30),
            Hero(
              tag: 'Auth',
              child: RoundedLoadingButton(
                  color: Color(0xff00C1AA),
                  borderRadius: 10,
                  width: 2000, // Give it a maximum width to safe frmo error!
                  controller: _loginbtnController,
                  onPressed: () {
                    Timer(Duration(seconds: 3), () {
                      _loginbtnController.success();
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: ProfileSetup(),
                              type: PageTransitionType.fade));
                    });
                  },
                  child: Text(
                    'Login',
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
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: ForgotPassword(), type: PageTransitionType.fade),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffC1272D)),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
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
                          child: Register(), type: PageTransitionType.fade),
                    );
                  },
                  child: Text(
                    'Sign Up',
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

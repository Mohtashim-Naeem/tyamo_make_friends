import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/views/widgets/Auth/Auth_heading.dart';

import '../widgets/Auth/Auth_text_field.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController ForgotPasswordController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 2, 33),
        centerTitle: true,
        title: Text('Tyamo',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(children: [
          const SizedBox(height: 40),
          AuthHeading(
              mainText: 'Forgot your Password ? ',
              subText: '',
              logo: 'assets/images/log.png',
              fontsize: 18,
              logosize: 35),
          // SizedBox(height: ,)
          Container(
            height: 150,
            width: 150,
            child: Image.asset(
              'assets/images/forgot_password.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'To request for a new one, Type your email address below . A link to reset the password will be send to that email.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(),
          ),
          const SizedBox(height: 40),
          AuthTextField(
              keyboardType: TextInputType.emailAddress,
              icon: Icon(Icons.alternate_email),
              labelText: Text('Email'),
              obsecureText: false,
              size: 15),
          const SizedBox(height: 30),
          Hero(
            tag: 'Auth',
            child: RoundedLoadingButton(
                color: Color(0xff00C1AA),
                borderRadius: 10,
                width: 2000, // Give it a maximum width to safe frmo error!
                controller: ForgotPasswordController,
                onPressed: () {
                  print('The button was pressed');
                },
                child: Text(
                  'SEND',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/views/Auth/forgot_pasword.dart';
import 'package:tyamo/views/Auth/login.dart';
import 'package:tyamo/views/Auth/register.dart';
import 'package:tyamo/views/Invite/Invite_friends.dart';
import 'package:tyamo/views/Invite/accept_invite.dart';
import 'package:tyamo/views/Profile/profile_setup.dart';

void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tyamo',
        home: Login(),
      );
    });
  }
}

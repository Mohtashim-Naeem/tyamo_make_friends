import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/views/Invite/Invite_friends.dart';
import 'package:tyamo/views/widgets/Auth/Auth_text_field.dart';

class ProfileSetup extends StatefulWidget {
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController ProfileSetupbtnController =
      RoundedLoadingButtonController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Container(
            height: 150,
            width: 150,
            child: Image.asset(
              'assets/images/logo.png',
              filterQuality: FilterQuality.high,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              filterQuality: FilterQuality.high),
        ),
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: const Color(0xff000221),
            child: Text(
              'Profile Setup',
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 60),
          CircularProfileAvatar(
            '',
            backgroundColor: Colors.cyan,
            initialsText: Text(
              '+',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AuthTextField(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.face),
                labelText: Text("Your name"),
                obsecureText: false,
                size: 16),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AuthTextField(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.alternate_email),
                labelText: Text("Your username"),
                obsecureText: false,
                size: 16),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = true;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.male,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1.0, 9.0),
                            color: Colors.black26,
                            blurRadius: 10)
                      ],
                      color: isMale ? Colors.cyan : Colors.grey,
                      shape: BoxShape.circle),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = false;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.female,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: !isMale ? Colors.purple : Colors.grey,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1.0, 9.0),
                            color: Colors.black26,
                            blurRadius: 10)
                      ],
                      shape: BoxShape.circle),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Hero(
              tag: 'Auth',
              child: RoundedLoadingButton(
                  color: Color(0xff00C1AA),
                  borderRadius: 10,
                  width: 2000, // Give it a maximum width to safe frmo error!
                  controller: ProfileSetupbtnController,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: InviteFriends(),
                            type: PageTransitionType.fade));
                  },
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}

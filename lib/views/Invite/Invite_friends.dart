import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/views/Invite/accept_invite.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Soney';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: null,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: AcceptInvite(),
                        type: PageTransitionType.rightToLeft));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.person_outline,
                  color: Color.fromARGB(255, 114, 0, 134),
                  size: 30,
                ),
              ),
            )
          ],
          backgroundColor: Colors.white,
          title: Container(
            height: 150,
            // width: 30,
            child: Image.asset(
              'assets/images/logo.png',
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: Color(0xff00C1AA),
          ),
          child: Text(
            'Find your friend',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
            textScaleFactor: 1,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                      hintText: 'Hi Soney, type an exact username',
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 81, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),

        // SizedBox(
        //   height: 15,
        // ),
        SizedBox(
          height: 250,
          width: 250,
          child: Image.asset('assets/images/invite.png'),
        ),
        Text(
          textAlign: TextAlign.center,
          'Search for your friend on Tyamo or \nInvite your friend to Tyamo',
          style: GoogleFonts.nunito(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Invite a friend'),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: Color.fromARGB(255, 114, 0, 134),
            // backgroundColor: const Color(0xff000221),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        )
      ]),
    );
  }
}

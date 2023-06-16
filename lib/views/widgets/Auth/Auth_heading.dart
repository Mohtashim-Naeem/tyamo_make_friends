import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontsize;
  final double logosize;

  AuthHeading(
      {required this.mainText,
      required this.subText,
      required this.logo,
      required this.fontsize,
      required this.logosize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Color(0xff000221),
                fontSize: fontsize,
              ),
            ),
            Container(
                width: logosize,
                height: logosize,
                child: Image.asset(
                  logo,
                  filterQuality: FilterQuality.high,
                ))
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Color(0xff000221),
            fontSize: fontsize,
          ),
        ),
      ],
    );
  }
}

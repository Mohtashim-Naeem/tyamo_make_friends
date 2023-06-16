import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
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
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xff00C1AA),
            ),
            child: Text(
              'See recieved invitations',
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
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10,
              child: Container(
                height: 100,
                // color: Colors.white,
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 5, 15),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff00C1AA),
                            radius: 35,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              '@Soney1616',
                              style: GoogleFonts.poppins(fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Text(
                              'Soney',
                              style: GoogleFonts.poppins(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            GFButton(
                              elevation: 10,
                              onPressed: () {},
                              color: Color(0xff00C1AA),
                              shape: GFButtonShape.pills,
                              text: 'Accept',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GFButton(
                              elevation: 10,
                              onPressed: () {},
                              color: Color.fromARGB(255, 193, 0, 0),
                              shape: GFButtonShape.pills,
                              text: 'Decline',
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 350,
            width: 350,
            child: Image.asset("assets/images/recieved.png"),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your recieved invitations are currently ',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff00C1AA),
                ),

                // color: Colors.purple),
              ),
              Text(
                'EMPTY',
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    // color: Color(0xff00C1AA),
                    color: Colors.purple),
              ),
            ],
          )
        ],
      ),
    );
  }
}

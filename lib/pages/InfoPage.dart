import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuko_cipher/pages/home.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/info.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.87),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF9B71F1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(208, 58),
                          backgroundColor: const Color(0xFF9B71F1),
                          shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              // border radius
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => home())));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Purrceed!",
                          style: GoogleFonts.pressStart2p(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

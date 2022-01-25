import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';
import 'package:futurejob/pages/2_start_page.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

// NOTE: STATEFULWIDGET
class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {
  // NOTE: LEARN MORE ABOUT INITSTATE
  void initState() {
    // NOTE: LEARN MORE ABOUT SUPER.INITSTATE 
    super.initState();
    // NOTE: A NEW FUNCTION AS DESCRIBED BELOW
    startTimer();
  }

  // NOTE: LEARN MORE ABOUT ASYNC
  startTimer() async {
    // NOTE: LEARN MORE ABOUT VAR AND DURATION
    var duration = Duration(seconds: 2);
    // NOTE: THIS LINE RETURNS TO THE FOLLOWING ROUTE FUNCTION
    return Timer(duration, () {
      // NOTE: LEARN MORE ABOUT NAVIGATOR, PUSHREPLACEMENT, AND MATERIALPAGEROUT
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) {StartPage();
          return StartPage();
        }
      ));
    });
  }

  // NOTE: SPLASH SCREEN
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 59,
              height: 76,
              child: Image.asset('assets/logo.png',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'FUTUREJOB',
              style: GoogleFonts.poppins(
                color: Color(0xffFFFFFF),
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:eleanor_rigby/pages/home.dart';
import 'package:eleanor_rigby/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(mainsite());
}

class mainsite extends StatelessWidget {
  const mainsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Arnabesh Das',
        theme: ThemeData(
          textTheme: TextTheme(
            headline4: GoogleFonts.lato(
                fontSize: 36,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.25,
                color: textGrey),
            headline5: GoogleFonts.lato(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.25,
              color: textGrey,
            ),
            headline6: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.25,
                color: textGrey),
            subtitle1: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
                color: darkGrey),
            subtitle2: GoogleFonts.lato(
                fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.1),
            bodyText1: GoogleFonts.lato(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.25,
              color: linkColor,
            ),
            bodyText2: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
                color: textGrey),
            button: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.25,
                color: light),
            caption: GoogleFonts.lato(
                fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: GoogleFonts.lato(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5,
                color: textGrey),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imminex/base/colors.dart';


MaterialColor primaryMaterialColor = MaterialColor(
  4292026665,
  <int, Color>{
    50: Color.fromRGBO(
      211,
      33,
      41,
      .1,
    ),
    100: Color.fromRGBO(
      211,
      33,
      41,
      .2,
    ),
    200: Color.fromRGBO(
      211,
      33,
      41,
      .3,
    ),
    300: Color.fromRGBO(
      211,
      33,
      41,
      .4,
    ),
    400: Color.fromRGBO(
      211,
      33,
      41,
      .5,
    ),
    500: Color.fromRGBO(
      211,
      33,
      41,
      .6,
    ),
    600: Color.fromRGBO(
      211,
      33,
      41,
      .7,
    ),
    700: Color.fromRGBO(
      211,
      33,
      41,
      .8,
    ),
    800: Color.fromRGBO(
      211,
      33,
      41,
      .9,
    ),
    900: Color.fromRGBO(
      211,
      33,
      41,
      1,
    ),
  },
);

ThemeData myTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  primaryColor: Color(0xffd32129),
  scaffoldBackgroundColor: Color(0xffe5e5e5),
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    centerTitle: true,
    titleTextStyle: TextStyle(color: appBlackColor, fontSize: 18, fontWeight: FontWeight.w600),
  ),
  primarySwatch: primaryMaterialColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Color(0xffd32129),
      shape: StadiumBorder(),
      minimumSize: Size(0,50),
    )
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Color(0xffd32129),
        shape: StadiumBorder(),
        side: BorderSide( color: appPrimaryColor),
        minimumSize: Size(0,50),
      )
  )
);

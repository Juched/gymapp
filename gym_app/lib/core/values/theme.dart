import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Theme {
  final Size size;

  Theme({required this.size});
}

ThemeData get lightTheme {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    textTheme: GoogleFonts.rubikTextTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
  );
}

TextStyle get headerTitleStyle {
  return const TextStyle(
      color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700);
}

TextStyle get bigTitleStyle {
  return const TextStyle(color: Colors.black, fontSize: 26);
}

TextStyle get bigTitleStyleWhite {
  return const TextStyle(
      color: Colors.white, fontSize: 26, fontWeight: FontWeight.w900);
}

TextStyle get titleStyle {
  return const TextStyle(
    color: Colors.black,
    fontSize: 22,
  );
}

TextStyle get titleStyleBold {
  return const TextStyle(
      color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold);
}

TextStyle get titleStyleWhite {
  return const TextStyle(
      color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900);
}

TextStyle get smallTitleStyle {
  return const TextStyle(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900);
}

TextStyle get smallTitleStyleWhite {
  return const TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900);
}

TextStyle get smallTitleStyleGrey {
  return const TextStyle(
      color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500);
}

TextStyle get smallTitleStyleBlue {
  return TextStyle(
      color: Colors.blue[800], fontSize: 18, fontWeight: FontWeight.w900);
}

TextStyle get subTitleStyle {
  return const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w900);
}

TextStyle get subTitleStyleGrey {
  return const TextStyle(
    color: Colors.grey,
    fontSize: 16,
  );
}

TextStyle get smalSubTitleStyle {
  return const TextStyle(
      color: Colors.black, fontSize: 14, fontWeight: FontWeight.w900);
}

TextStyle get smalSubTitleStyleWhite {
  return const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w900);
}

TextStyle get subHeadingIntroPage {
  return GoogleFonts.rubik(color: Colors.grey, fontSize: 14);
}

TextStyle get HeadungIntroPage {
  return GoogleFonts.rubik(fontSize: 20);
}

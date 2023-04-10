import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static TextStyle buttonTextStyle = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static Color bgColor = const Color(0xFF2C2C2C);
  static Color darkBgColor = const Color(0x001b1a1d);

  static TextStyle titleTS = GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 36 , color: Colors.white));
  static TextStyle profileNameTS = GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 24 , color: Colors.white));
  static TextStyle subtitleTS = GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 18 , color: Colors.white));
}

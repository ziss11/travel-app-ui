import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/style/colors.dart';

final TextStyle kHeading5 = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 24,
  color: kBlackColor,
);
final TextStyle kHeading6 = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  fontSize: 18,
  color: kBlackColor,
);
final TextStyle kSubtitle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  color: kDarkGrey,
);
final TextStyle kTitle = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 16,
  color: kWhiteColor,
);
final TextStyle kBodyText = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  fontSize: 13,
  color: kBrownColor,
);

final kTextTheme = TextTheme(
  bodyText1: kBodyText,
  headline5: kHeading5,
  headline6: kHeading6,
  subtitle1: kTitle,
  subtitle2: kSubtitle,
);

import 'package:flutter/material.dart';

const largeTextSize = 26.0;
const mediumTextSize = 20.0;
const bodyTextSize = 16.0;
const String defaultFontFamily = 'Montserrat';

const AppBarTextStyle = TextStyle(
  fontFamily: defaultFontFamily,
  fontSize: mediumTextSize,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);

const HeadlineTextStyle = TextStyle(
  fontFamily: defaultFontFamily,
  fontSize: largeTextSize,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

const BodyTextStyle = TextStyle(
  fontFamily: defaultFontFamily,
  fontSize: bodyTextSize,
  fontWeight: FontWeight.w300,
  color: Colors.black,
);
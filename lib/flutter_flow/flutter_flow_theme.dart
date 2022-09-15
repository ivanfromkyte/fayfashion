// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;
  late Color green02;
  late Color green03;
  late Color green05;
  late Color green06;
  late Color green07;
  late Color customColor6;
  late Color gray01;
  late Color green04;
  late Color gray05;
  late Color gray07;
  late Color gray08;
  late Color gray09;
  late Color gray10;
  late Color blue;
  late Color lightBlue;
  late Color black;
  late Color marine;
  late Color softblue;
  late Color green;
  late Color orange;
  late Color pink;
  late Color customColor1;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF363F4D);
  late Color secondaryColor = const Color(0xFF2DD1AC);
  late Color tertiaryColor = const Color(0xFFF5A623);
  late Color alternate = const Color(0xFFFF4E4E);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF363F4D);
  late Color secondaryText = const Color(0xFF444E5E);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF2FAE94);
  late Color green02 = Color(0xFF25BF97);
  late Color green03 = Color(0xFF2FC79F);
  late Color green05 = Color(0xFF5BD7BB);
  late Color green06 = Color(0xFF8CD7C6);
  late Color green07 = Color(0xFFDDF7F2);
  late Color customColor6 = Color(0xFFE3F6F1);
  late Color gray01 = Color(0xFF2A323F);
  late Color green04 = Color(0xFF535D6E);
  late Color gray05 = Color(0xFF808C9E);
  late Color gray07 = Color(0xFFD9DCE2);
  late Color gray08 = Color(0xFFE8E9EA);
  late Color gray09 = Color(0xFFEFF1F3);
  late Color gray10 = Color(0xFFF7F7F8);
  late Color blue = Color(0xFF4286F4);
  late Color lightBlue = Color(0xFF00D1FE);
  late Color black = Color(0xFF2D2D2A);
  late Color marine = Color(0xFF0D3B66);
  late Color softblue = Color(0xFF89BBFE);
  late Color green = Color(0xFF82D173);
  late Color orange = Color(0xFFFF8552);
  late Color pink = Color(0xFFCE7DA5);
  late Color customColor1 = Color(0xFF2FB73C);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Graphik';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Graphik',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 26,
      );
  String get title2Family => 'Graphik';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Graphik',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  String get title3Family => 'Graphik';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Graphik',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get subtitle1Family => 'Graphik';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Graphik',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 19,
      );
  String get subtitle2Family => 'Graphik';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Graphik',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 17,
      );
  String get bodyText1Family => 'Graphik';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Graphik',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText2Family => 'Graphik';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Graphik',
        color: theme.secondaryText,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}

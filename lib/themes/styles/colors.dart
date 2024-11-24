import 'package:flutter/material.dart';

abstract class HColor {
  /// COLOR RANGES

  // Blue
  static const blue50 = Color(0XFFF4F5FF);
  static const blue100 = Color(0XFFDDE2FE);
  static const blue200 = Color(0XFFB9C7FA);
  static const blue300 = Color(0XFF89A5F3);
  static const blue400 = Color(0XFF4E75E3);
  static const blue500 = Color(0XFF344CB4);
  static const blue600 = Color(0XFF242A85);
  static const blue700 = Color(0XFF171557);
  static const blue750 = Color(0XFF15107E);
  static const blue800 = Color(0XFF0A082E);
  static const blue900 = Color(0XFF040318);

  // Green
  static const green25 = Color(0xFF498441);
  static const green50 = Color(0XFFEAF7F9);
  static const green100 = Color(0XFFD3F0F5);
  static const green200 = Color(0XFF94DEE9);
  static const green300 = Color(0XFF6AB9C2);
  static const green400 = Color(0XFF408D95);
  static const green500 = Color(0XFF1D6167);
  static const green600 = Color(0XFF083C41);
  static const green700 = Color(0XFF022226);
  static const green800 = Color(0XFF001419);
  static const green900 = Color(0XFF000F13);

  // Red
  static const red50 = Color(0XFFFDF0ED);
  static const red100 = Color(0XFFFAE2DF);
  static const red200 = Color(0XFFF6C6C1);
  static const red300 = Color(0XFFF09086);
  static const red400 = Color(0XFFD74F39);
  static const red500 = Color(0XFF913120);
  static const red600 = Color(0XFF601810);
  static const red700 = Color(0XFF3E0C06);
  static const red800 = Color(0XFF2F0803);
  static const red900 = Color(0XFF230601);

  /// OTHER COLORS

  // shadow color
  static const sky = Color(0xff74DAE9);
  static const river = Color(0xff2D2793);

  // Categories
  static const categoryMeasure = Color(0XFFE3B94F);
  static const categoryOpportunity = Color(0XFF81B63C);
  static const categoryRisk = Color(0XFFE56630);
  static const categoryAction = Color(0XFF7ABDB9);

  // State
  static const success = Color(0XFF11A960);
  static const redError = Color(0XFFBE3449);
  static const warning = Color(0XFFF5A623);

  // Intro and  test color
  static const pink = Color(0XFFCD7DE7);
  static const green = Color(0XFF6AB9C2);

  // Black & white (combined with opacity) can be used to create
  // lighter or darker content on top of other colors, where the values in
  // the color ranges aren't suitable
  static const white = Color(0XFFFFFFFF);
  static const black = Color(0xFF000000);
  static const notch = Color.fromARGB(31, 244, 245, 255);
  // Gradient
  static const blueGradientEnd = Color(0XFF6697d0);
}

class ColorModel {
  const ColorModel({
    required this.blueHalf,
    required this.blue1,
    required this.blue2,
    required this.blue3,
    required this.blue4,
    required this.blue5,
    required this.blue6,
    required this.blue7,
    required this.blue7half,
    required this.blue8,
    required this.blue9,
    required this.greenHalf,
    required this.green1,
    required this.green2,
    required this.green3,
    required this.green4,
    required this.green5,
    required this.green6,
    required this.green7,
    required this.green8,
    required this.green9,
    required this.redHalf,
    required this.red1,
    required this.red2,
    required this.red3,
    required this.red4,
    required this.red5,
    required this.red6,
    required this.red7,
    required this.red8,
    required this.red9,
    required this.success,
    required this.error,
    required this.warning,
    required this.categoryMeasure,
    required this.categoryOpportunity,
    required this.categoryRisk,
    required this.categoryAction,
    required this.backgroundColor,
    required this.white,
    required this.black,
    required this.pink,
    required this.green,
    required this.notch,
    required this.blueGradientEnd,
    required this.sky,
    required this.river,
    required this.borderColor,
  });

  factory ColorModel.whiteMode() {
    return const ColorModel(
      blueHalf: HColor.blue50,
      blue1: HColor.blue100,
      blue2: HColor.blue200,
      blue3: HColor.blue300,
      blue4: HColor.blue400,
      blue5: HColor.blue500,
      blue6: HColor.blue600,
      blue7: HColor.blue700,
      blue7half: HColor.blue750,
      blue8: HColor.blue800,
      blue9: HColor.blue900,
      greenHalf: HColor.green50,
      green1: HColor.green100,
      green2: HColor.green200,
      green3: HColor.green300,
      green4: HColor.green400,
      green5: HColor.green500,
      green6: HColor.green600,
      green7: HColor.green700,
      green8: HColor.green800,
      green9: HColor.green900,
      redHalf: HColor.red50,
      red1: HColor.red100,
      red2: HColor.red200,
      red3: HColor.red300,
      red4: HColor.red400,
      red5: HColor.red500,
      red6: HColor.red600,
      red7: HColor.red700,
      red8: HColor.red800,
      red9: HColor.red900,
      black: HColor.black,
      white: HColor.white,
      success: HColor.success,
      error: HColor.redError,
      warning: HColor.warning,
      categoryMeasure: HColor.categoryMeasure,
      categoryOpportunity: HColor.categoryOpportunity,
      categoryRisk: HColor.categoryRisk,
      categoryAction: HColor.categoryAction,
      backgroundColor: HColor.blue900,
      pink: HColor.pink,
      green: HColor.green,
      notch: HColor.notch,
      blueGradientEnd: HColor.blueGradientEnd,
      sky: HColor.sky,
      river: HColor.river,
      borderColor: HColor.blue50,
    );
  }

  final Color blueHalf;
  final Color blue1;
  final Color blue2;
  final Color blue3;
  final Color blue4;
  final Color blue5;
  final Color blue6;
  final Color blue7;
  final Color blue7half;
  final Color blue8;
  final Color blue9;

  final Color greenHalf;
  final Color green1;
  final Color green2;
  final Color green3;
  final Color green4;
  final Color green5;
  final Color green6;
  final Color green7;
  final Color green8;
  final Color green9;

  final Color redHalf;
  final Color red1;
  final Color red2;
  final Color red3;
  final Color red4;
  final Color red5;
  final Color red6;
  final Color red7;
  final Color red8;
  final Color red9;

  final Color success;
  final Color error;
  final Color warning;

  final Color categoryMeasure;
  final Color categoryOpportunity;
  final Color categoryRisk;
  final Color categoryAction;

  final Color backgroundColor;

  final Color white;
  final Color black;

  final Color pink;
  final Color green;

  final Color notch;
  final Color blueGradientEnd;

  final Color sky;
  final Color river;
  final Color borderColor;
}

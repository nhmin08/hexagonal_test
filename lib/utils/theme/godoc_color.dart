import 'package:flutter/material.dart';

@immutable
class GodocColors extends ThemeExtension<GodocColors>{
  final Color? godocBlue700;
  final Color? godocBlue600;
  final Color? godocBlue500;
  final Color? godocBlue400;
  final Color? godocBlue300;
  final Color? godocBlue200;
  final Color? godocBlue150;
  final Color? godocBlue100;

  final Color? godocRed700;
  final Color? godocRed600;
  final Color? godocRed500;
  final Color? godocRed400;
  final Color? godocRed300;
  final Color? godocRed200;
  final Color? godocRed100;
  final Color? godocRed50;

  final Color? godocGray900;
  final Color? godocGray800;
  final Color? godocGray700;
  final Color? godocGray600;
  final Color? godocGray500;
  final Color? godocGray400;
  final Color? godocGray300;
  final Color? godocGray200;
  final Color? godocGray100;
  final Color? godocGray50;

  const GodocColors({
    required this.godocBlue700,
    required this.godocBlue600,
    required this.godocBlue500,
    required this.godocBlue400,
    required this.godocBlue300,
    required this.godocBlue200,
    required this.godocBlue150,
    required this.godocBlue100,
    required this.godocRed700,
    required this.godocRed600,
    required this.godocRed500,
    required this.godocRed400,
    required this.godocRed300,
    required this.godocRed200,
    required this.godocRed100,
    required this.godocRed50,
    required this.godocGray900,
    required this.godocGray800,
    required this.godocGray700,
    required this.godocGray600,
    required this.godocGray500,
    required this.godocGray400,
    required this.godocGray300,
    required this.godocGray200,
    required this.godocGray100,
    required this.godocGray50
});

  @override
  ThemeExtension<GodocColors> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<GodocColors> lerp(covariant ThemeExtension<GodocColors>? other, double t){
    if(other is! GodocColors){
      return this;
    }
    return GodocColors(
        godocBlue700: Color.lerp(godocBlue700, other.godocBlue700, t),
        godocBlue600: Color.lerp(godocBlue600, other.godocBlue600, t),
        godocBlue500: Color.lerp(godocBlue500, other.godocBlue500, t),
        godocBlue400: Color.lerp(godocBlue400, other.godocBlue400, t),
        godocBlue300: Color.lerp(godocBlue300, other.godocBlue300, t),
        godocBlue200: Color.lerp(godocBlue200, other.godocBlue200, t),
        godocBlue150: Color.lerp(godocBlue150, other.godocBlue150, t),
        godocBlue100: Color.lerp(godocBlue100, other.godocBlue100, t),
        godocRed700: Color.lerp(godocRed700, other.godocRed700, t),
        godocRed600: Color.lerp(godocRed600, other.godocRed600, t),
        godocRed500: Color.lerp(godocRed500, other.godocRed500, t),
        godocRed400: Color.lerp(godocRed400, other.godocRed400, t),
        godocRed300: Color.lerp(godocRed300, other.godocRed300, t),
        godocRed200: Color.lerp(godocRed200, other.godocRed200, t),
        godocRed100: Color.lerp(godocRed100, other.godocRed100, t),
        godocRed50: Color.lerp(godocRed50, other.godocRed50, t),
        godocGray900: Color.lerp(godocGray900, other.godocGray900, t),
        godocGray800: Color.lerp(godocGray800, other.godocGray800, t),
        godocGray700: Color.lerp(godocGray700, other.godocGray700, t),
        godocGray600: Color.lerp(godocGray600, other.godocGray600, t),
        godocGray500: Color.lerp(godocGray500, other.godocGray500, t),
        godocGray400: Color.lerp(godocGray400, other.godocGray400, t),
        godocGray300: Color.lerp(godocGray300, other.godocGray300, t),
        godocGray200: Color.lerp(godocGray200, other.godocGray200, t),
        godocGray100: Color.lerp(godocGray100, other.godocGray100, t),
        godocGray50: Color.lerp(godocGray50, other.godocGray50, t));
  }

  static const light = GodocColors(
      godocBlue700: Color(0xff3A7BDF),
      godocBlue600:  Color(0xff6195E6),
      godocBlue500:  Color(0xff9DBDEF),
      godocBlue400:  Color(0xffA9CBFF),
      godocBlue300:  Color(0xffC8DEFF),
      godocBlue200:  Color(0xffE5F0FF),
      godocBlue150: Color(0xffF4F9FF),
      godocBlue100: Color(0xffFAFCFF),
      godocRed700: Color(0xffFF4848),
      godocRed600: Color(0xffFF5A5A),
      godocRed500: Color(0xffFF6C6C),
      godocRed400: Color(0xffFF7E7E),
      godocRed300: Color(0xffFF9090),
      godocRed200: Color(0xffFFA2A2),
      godocRed100: Color(0xffFFB4B4),
      godocRed50: Color(0xffFFC6C6),
      godocGray900: Color(0xff111111),
      godocGray800: Color(0xff222222),
      godocGray700: Color(0xff444444),
      godocGray600: Color(0xff666666),
      godocGray500: Color(0xff888888),
      godocGray400: Color(0xffAAAAAA),
      godocGray300: Color(0xffCCCCCC),
      godocGray200: Color(0xffDDDDDD),
      godocGray100: Color(0xffEEEEEE),
      godocGray50: Color(0xffF9F9F9));

  static const dark = GodocColors(
      godocBlue700: Color(0xff3A7BDF),
      godocBlue600:  Color(0xff6195E6),
      godocBlue500:  Color(0xff9DBDEF),
      godocBlue400:  Color(0xffA9CBFF),
      godocBlue300:  Color(0xffC8DEFF),
      godocBlue200:  Color(0xffE5F0FF),
      godocBlue150: Color(0xffF4F9FF),
      godocBlue100: Color(0xffFAFCFF),
      godocRed700: Color(0xffFF4848),
      godocRed600: Color(0xffFF5A5A),
      godocRed500: Color(0xffFF6C6C),
      godocRed400: Color(0xffFF7E7E),
      godocRed300: Color(0xffFF9090),
      godocRed200: Color(0xffFFA2A2),
      godocRed100: Color(0xffFFB4B4),
      godocRed50: Color(0xffFFC6C6),
      godocGray900: Color(0xffF9F9F9),
      godocGray800: Color(0xffEEEEEE),
      godocGray700: Color(0xffDDDDDD),
      godocGray600: Color(0xffCCCCCC),
      godocGray500: Color(0xffAAAAAA),
      godocGray400: Color(0xff888888),
      godocGray300: Color(0xff666666),
      godocGray200: Color(0xff444444),
      godocGray100: Color(0xff222222),
      godocGray50: Color(0xff111111));
}

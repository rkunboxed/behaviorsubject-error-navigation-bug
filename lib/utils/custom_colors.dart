import 'dart:ui' show Color;
import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';

const _colorDarkestVal = 0xFF384250;
const _colorDarkVal = 0xFF3c4c66;
const _colorPrimaryVal = _colorDarkVal;
const _colorPrimary90Val = 0xEE3c4c66; // ~90% opacity
const _colorAccentVal = 0xFFd45753;
const _colorWhiteVal = 0xF2FFFFFF;
const _colorOffWhiteVal = 0xFFF9F9F9;
const _colorBlueVal = 0xFF538287;
const _colorBlueLightVal = 0xE688BDBC;
const _colorBlueMediumVal = 0xFF78AEAD;
const _colorBlueWashLightVal = 0x2688BDBC;
const _colorBlueWashMediumVal = 0x4D88BDBC;
const _colorGreenVal = 0xFF93C178;
const _colorGoldVal = 0xFFF8B546;
const _colorGoldWashLightVal = 0x22F8B546;
const _colorGoldDarkVal = 0xFFEEA731;
const _colorGoldDarkestVal = 0xFFD08303;

class CustomColors {
  CustomColors._();

  static const Color colorDarkest = Color(_colorDarkestVal);
  static const Color colorDark = Color(_colorDarkVal);
  static const Color colorPrimary = Color(_colorPrimaryVal);
  static const Color colorPrimary90 = Color(_colorPrimary90Val);
  static const Color colorAccent = Color(_colorAccentVal);
  static const Color colorWhite = Color(_colorWhiteVal);
  static const Color colorOffWhite = Color(_colorOffWhiteVal);
  static const Color colorBlue = Color(_colorBlueVal);
  static const Color colorBlueLight = Color(_colorBlueLightVal);
  static const Color colorBlueMedium = Color(_colorBlueMediumVal);
  static const Color colorWashLight = Color(_colorBlueWashLightVal);
  static const Color colorWashMedium = Color(_colorBlueWashMediumVal);
  static const Color colorGreen = Color(_colorGreenVal);
  static const Color colorGold = Color(_colorGoldVal);
  static const Color colorGoldWashLight = Color(_colorGoldWashLightVal);
  static const Color colorGoldDark = Color(_colorGoldDarkVal);
  static const Color colorGoldDarkest = Color(_colorGoldDarkestVal);
}

const MaterialColor customPrimary = const MaterialColor(
  _colorPrimaryVal,
  const <int, Color>{
    50:  Color(0xFFe0e2e6),
    100: Color(0xFFc0c5ce),
    200: Color(0xFFa2a9b6),
    300: Color(0xFF828d9d),
    400: Color(0xFF637085),
    500: Color(_colorPrimaryVal), //default shade
    600: Color(0xFF303c51),
    700: Color(0xFF242d3d),
    800: Color(0xFF181e28),
    900: Color(0xFF0c0f14),
  },
);

const MaterialColor customAccent = const MaterialColor(
  _colorAccentVal,
  const <int, Color>{
    50:  Color(0xFFf8e4e3),
    100: Color(0xFFf1c9c8),
    200: Color(0xFFebafad),
    300: Color(0xFFe49491),
    400: Color(0xFFdd7976),
    500: Color(_colorAccentVal), //default shade
    600: Color(0xFFa94542),
    700: Color(0xFF7f3431),
    800: Color(0xFF542221),
    900: Color(0xFF2a1110),
  },
);

//ALPHA VALUE REFERENCE
// 100% - FF
// 95% - F2
// 90% - E6
// 85% - D9
// 80% - CC
// 75% - BF
// 70% - B3
// 65% - A6
// 60% - 99
// 55% - 8C
// 50% - 80
// 45% - 73
// 40% - 66
// 35% - 59
// 30% - 4D
// 25% - 40
// 20% - 33
// 15% - 26
// 10% - 1A
// 5% - 0D
// 0% - 00
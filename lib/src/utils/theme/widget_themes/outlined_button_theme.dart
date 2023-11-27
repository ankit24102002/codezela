import 'package:flutter/material.dart';
// import 'package:get/get_utils/get_utils.dart';
import 'package:login_flutter_app/src/constants/color.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tSecondaryColor,
          side: const BorderSide(color: tSecondaryColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)));

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tWhiteColor,
          side: const BorderSide(color: tWhiteColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)));
}

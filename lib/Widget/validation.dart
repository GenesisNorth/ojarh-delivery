import 'package:deliveryboy_ojarh/Widget/translateVariable.dart';
import 'package:flutter/material.dart';
import '../Localization/Demo_Localization.dart';

class StringValidation {
  static String? validateUserName(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return getTranslated(context, USER_REQUIRED)!;
    }
    if (value.length <= 1) {
      return getTranslated(context, USER_LENGTH)!;
    }
    return null;
  }

  static String? validateMob(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return getTranslated(context, MOB_REQUIRED)!;
    }
    if (value.length < 5) {
      return getTranslated(context, VALID_MOB)!;
    }
    return null;
  }

  static String? validateField(String? value, BuildContext context) {
    if (value!.length == 0)
      return getTranslated(context, FIELD_REQUIRED)!;
    else
      return null;
  }

  static String? validatePass(String? value, BuildContext context) {
    if (value!.length == 0)
      return getTranslated(context, PWD_REQUIRED)!;
    else if (value.length <= 5)
      return getTranslated(context, PWD_LENGTH)!;
    else
      return null;
  }

  static String? validateAltMob(String value, BuildContext context) {
    if (value.isNotEmpty) if (value.length < 9) {
      return getTranslated(context, VALID_MOB)!;
    }
    return null;
  }

  static String capitalize(String s) {
    if (s == '') {
      return '';
    }
    return s[0].toUpperCase() + s.substring(1);
  }
}

// for the translation of string
String? getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context)!.translate(key);
}

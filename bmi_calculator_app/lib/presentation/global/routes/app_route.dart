import 'package:flutter/material.dart';

class AppRoute {
  AppRoute._();

  static void to(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  static void off(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  static void back(BuildContext context) {
    Navigator.pop(context);
  }
}

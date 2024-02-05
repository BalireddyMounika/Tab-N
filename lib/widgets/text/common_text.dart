import 'package:flutter/cupertino.dart';

Widget heading({required String text, Color? textColor}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: textColor,
    ),
  );
}

Widget subHeading({required String text, Color? textColor}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: textColor,
    ),
  );
}

Widget title({required String text, Color? textColor}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: textColor,
    ),
  );
}

Widget label({required String text, Color? textColor}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: textColor,
    ),
  );
}

Widget body({required String text, Color? textColor}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: textColor,
    ),
  );
}

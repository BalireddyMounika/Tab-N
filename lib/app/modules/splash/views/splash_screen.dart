import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
              width: 300,
              child: Image.asset(AppImages.icAppLogo, fit: BoxFit.fitWidth))),
    );
  }
}

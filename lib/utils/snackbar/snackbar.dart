import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/themes/app_colors.dart';

SnackbarController InfoSnackBar(title, message) {
  return Get.snackbar('', '',
      // backgroundColor: Colors.red,
      titleText: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
      ),
      messageText: Text(
        message,
        style: TextStyle(fontSize: 15, color: Colors.green),
      ),
      duration: Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM);
}
SnackbarController Error_message(title, message) {
  return Get.snackbar("", 'Please enter valid email',
      backgroundColor: AppColors.white,
      titleText: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
      ),
      messageText: Text(
        message,
        style: TextStyle(fontSize: 15),
      ),
      duration: Duration(seconds: 2),
      colorText: AppColors.blackColor,
      snackPosition: SnackPosition.BOTTOM);
}

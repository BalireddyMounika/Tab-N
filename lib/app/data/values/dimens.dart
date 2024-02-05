import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Dimens {
  Dimens._privateConstructor();

  static final screenWidth = Get.context!.width;
  static final screenHeight = Get.context!.height;

  //padding
  static const paddingX1 = 4.0;
  static const paddingX2 = 8.0;
  static const paddingX3 = 16.0;
  static const paddingX4 = 24.0;
  static const paddingX5 = 32.0;

  //margin
  static const marginX1 = 4.0;
  static const marginX2 = 8.0;
  static const marginX3 = 16.0;
  static const marginX4 = 24.0;
  static const marginX5 = 32.0;

  //radius
  static const radiusX1 = 4.0;
  static const radiusX2 = 8.0;
  static const radiusX3 = 16.0;
  static const radiusX4 = 24.0;
  static const radiusX5 = 32.0;
  static const radius10 = 10.0;

  //image scales
  static const imageScaleX1 = 8.0;
  static const imageScaleX2 = 16.0;
  static const imageScaleX3 = 24.0;
  static const imageScaleX4 = 32.0;
  static const imageScaleX5 = 40.0;
  static const imageScaleX6 = 48.0;
  static const imageScaleX7 = 56.0;
  static const imageScaleX8 = 64.0;
  static const imageScaleX9 = 72.0;
  static const imageScaleX10 = 80.0;
  static const imageScaleX12 = 96.0;
  static const imageScaleX14 = 112.0;
  static const imageScaleX16 = 162.0;
  static const imageScaleX24 = 224.0;
  static const imageScaleX20 = 320.0;

  //standard scales
  static const scaleX1 = 8.0;
  static const scaleX2 = 16.0;
  static const scaleX3 = 24.0;
  static const scaleX4 = 32.0;
  static const scaleX5 = 40.0;
  static const scaleX6 = 48.0;
  static const scaleX7 = 56.0;
  static const scaleX8 = 64.0;

  ///dividers

  static double fGapX5 = 5.h;
  static double fGapX10 = 10.0.h;
  static double fGapX12 = 12.h;
  static double fGapX14 = 14.0.h;
  static double fGapX18 = 18.0.h;
  static double fGapX16 = 16.0.h;
  static double fGapX20 = 20.0.h;
  static double fGapX22 = 22.0.h;
  static double fGapX24 = 24.0.h;
  static double fGapX26 = 26.0.h;
  static double fGapX28 = 28.0.h;
  static double fGapX30 = 30.0.h;
  static double fGapX40 = 40.0.h;
  static double fGapX50 = 50.0.h;
  static double fGapX60 = 60.0.h;
  static double fGapX70 = 70.0.h;
  static double fGapX80 = 70.0.h;
  static double fGapX90 = 70.0.h;
  static double fGapX100 = 100.h;

  /// fonts

  static double font10 = fGapX10;
  static double font12 = fGapX12;
  static double font14 = fGapX14;
  static double font16 = fGapX16;
  static double font18 = fGapX18;
  static double font20 = fGapX20;
  static double font22 = fGapX22;
  static double font24 = fGapX24;
  static double font26 = fGapX26;
  static double font28 = fGapX28;
  static double font30 = fGapX30;

  static const gapX1 = 10.0;

  static const gapX1_5 = 15.0;

  static const gapX0_5 = 5.0;

  static const gapX2 = 20.0;
  static const gapX2_5 = 25.0;
  static const gapX3 = 30.0;
  static const gapX4 = 40.0;
  static const gapX5 = 50.0;
  static const gapX6 = 60.0;
  static const gapX7 = 70.0;
  static const gapX75 = 75.0;
  static const gapX8 = 80.0;
  static const gapX9 = 90.0;
  static const gapX10 = 100.0;
  static const gapX110 = 110.0;
  static const gapX11 = 116.0;
  static const gapX12 = 120.0;
  static const gapX15 = 150.0;
  static const gapX17 = 170.0;
  static const gapX20 = 200.0;
  static const gapX26 = 255.0;
  static const gapX25 = 250.0;
  static const gapX28 = 280.0;
  static const gapX30 = 300.0;
  static const gapX35 = 350.0;
  static const gapX360 = 350.0;
  static const gapX40 = 400.0;
  static const gapX55 = 550.0;
  //heights

  static final screenHeightX18 = Dimens.screenHeight / 1.8;
  static final screenHeightX1_5 = Dimens.screenHeight / 1.5;
  static final screenHeightX1_2 = Dimens.screenHeight / 1.3;
  static final screenHeightXHalf = Get.height / 2;
  static final screenHeightX21 = Get.height / 2.1;
  static final screenHeightX22 = Get.height / 2.2;
  static final screenHeightX25 = Get.height / 2.5;
  static final screenHeightX3 = Get.height / 3.0;
  static final screenHeightX34 = Get.height / 3.4;
  static final screenHeightXFourth = Get.height / 4;
  static final screenHeightX5 = Get.height / 5;
  static final screenHeightXSixth = Get.height / 6;
  static final screenHeightX7 = Get.height / 7;
  static final screenHeightXEight = Get.height / 8;
  static final screenHeightX8 = Get.height / 8.5;
  static final screenHeightX9 = Get.height / 9;
  static final screenHeightX10 = Get.height / 9.5;
  static final screenHeightX11 = Get.height / 11;
  static final screenHeightX14 = Get.height / 13.5;
  static final screenHeightX20 = Get.height / 20.0;
  static final screenHeightX30 = Get.height / 30.0;
  static final screenHeightX13 = Get.height / 130.0;
  static final screenHeightX200 = Get.height / 200.0;
  static final screenHeightX35 = Get.height * 0.35;
  static final screenHeightX45 = Get.height * 0.45;
  static final screenHeightX46 = Get.height * 0.46;
  static final screenHeightX17 = Get.height * 0.17;
  static const screenHeightX600 = 600.0;
  static const screenHeightX650 = 650.0;
  static const screenHeightX680 = 680.0;
  static final searchListHeight = (Get.height - 170) / 2;

  //width

  static final screenWidthX12 = Get.width / 1.2;
  static final screenWidthX14 = Get.width / 1.4;
  static final screenWidthX16 = Get.width / 1.6;
  static final screenWidthX17 = Get.width / 1.7;
  static final screenWidthX19 = Get.width / 1.9;
  static final screenWidthXHalf = Get.width / 2;
  static final screenWidthX24 = Get.width / 2.4;
  static final screenWidthXThird = Get.width / 3;
  static final screenWidthX38 = Get.width / 3.8;
  static final screenWidthXFourth = Get.width / 4;
  static final screenWidthX44 = Get.width / 4.4;
  static final screenWidthXFifth = Get.width / 5;
  static final screenWidthXSixth = Get.width / 6;
  static final screenWidthX7 = Get.width / 7;
  static final screenWidthXEight = Get.width / 8;
  static final screenWidthX10 = Get.width / 10;
  static final screenWidthX35 = Get.width / 35;
  static final screenWidthX30 = Get.width / 30;
  static final screenWidthX20 = Get.width / 20;
  static final screenWidthX15 = Get.width / 15;
  static const screenWidthX740 = 740.0;

  //aspectRatio
  static final itemAspectRatio =
      Dimens.screenWidthXHalf / ((Dimens.screenHeight - Dimens.gapX6) / 2.3);

  static heightFactorOf(double value) {
    double data = screenHeight / (screenHeight / value);
    return data;
  }

  static const heightGap1 = SizedBox(height: gapX1);
  static const heightGap2 = SizedBox(height: gapX2);
  static const heightGap3 = SizedBox(height: gapX3);
  static const heightGap4 = SizedBox(height: gapX4);
  static const heightGap5 = SizedBox(height: gapX4);
  static const heightGap6 = SizedBox(height: gapX4);

  static const widthGap1 = SizedBox(width: gapX1);
  static const widthGap2 = SizedBox(width: gapX2);
  static const widthGap3 = SizedBox(width: gapX3);
  static const widthGap4 = SizedBox(width: gapX4);
  static const widthGap5 = SizedBox(width: gapX4);
  static const widthGap6 = SizedBox(width: gapX4);
}

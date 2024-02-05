import 'package:flutter/material.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';

Widget stationNameWidget(
    {required String name,
    required bool isSelected,
    required isCompleted,
    required Function() ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: ClipPath(
      clipper: CurvedClipper(),
      child: Container(
        height: 52,
        width: 150,
        color: isSelected ? AppColors.baseColor : AppColors.stationBgColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isCompleted)
              Icon(Icons.check_circle,
                  color: isSelected ? AppColors.white : Colors.green),
            const SizedBox(width: Dimens.gapX1),
            Text(
              name,
              style: AppStyles.tsBlackMedium16.copyWith(
                  color: isSelected ? AppColors.white : AppColors.blackColor),
            ),
          ],
        ),
      ),
    ),
  );
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 10, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 10, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width - 140, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';

class CommonDialog extends StatelessWidget {
  final String? title;
  final String? btnOneTitle;
  final String? btnTwoTitle;
  final Color? btnOneBgColor;
  final Color? btnOneTextColor;
  final Function()? btnOneOnTap;
  final Function()? btnTwoOnTap;

  const CommonDialog({
    Key? key,
    this.title,
    this.btnOneTitle,
    this.btnTwoTitle,
    this.btnOneBgColor,
    this.btnOneTextColor,
    this.btnOneOnTap,
    this.btnTwoOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      titlePadding: const EdgeInsets.all(16),
      title: Text(
        title ?? AppStrings.label,
        style: AppStyles.tsBlackMedium18,
        textAlign: TextAlign.center,
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                onPressed: btnOneOnTap ?? Get.back,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.black.withOpacity(
                            0.2); // Change the overlay color on hover
                      }
                      return AppColors.baseColor; // Default overlay color
                    },
                  ),
                ),
                child: Text(
                  btnOneTitle ?? AppStrings.label,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            )),
            // Expanded(
            //   child: TextButton(
            //     onPressed: btnOneOnTap ?? Get.back,
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(
            //           btnOneBgColor ?? AppColors.baseColor.withOpacity(0.1)),
            //     ),
            //     child: Text(
            //       btnOneTitle ?? AppStrings.label,
            //       style: TextStyle(
            //         color: btnOneTextColor ?? AppColors.baseColor,
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(width: 8),
            // Expanded(
            //   child: TextButton(
            //     onPressed: btnTwoOnTap ?? Get.back,
            //     style: ButtonStyle(
            //       backgroundColor:
            //           MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
            //     ),
            //     child: Text(
            //       btnTwoTitle ?? AppStrings.label,
            //       style: TextStyle(
            //         color: Colors.grey,
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: TextButton(
                  onPressed: btnTwoOnTap ?? Get.back,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.black.withOpacity(
                              0.2); // Change the overlay color on hover
                        }
                        return AppColors.baseColor; // Default overlay color
                      },
                    ),
                  ),
                  child: Text(
                    btnTwoTitle ?? AppStrings.label,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

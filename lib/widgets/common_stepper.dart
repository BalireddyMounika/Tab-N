import 'package:flutter/material.dart';
import '../app/data/values/dimens.dart';
import '../app/themes/app_colors.dart';

class CustomStepper extends StatelessWidget {
  final int stepNumber;
  final int indexNumber;
  final int currentStep;
  final Function(int) onStepChanged;

  const CustomStepper({
    super.key,
    required this.stepNumber,
    required this.indexNumber,
    required this.currentStep,
    required this.onStepChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        stepNumber,
        (index) {
          bool isCompleted = currentStep >= index;
          return Expanded(
            child: Row(
              children: [
                Container(
                  width: Dimens.gapX2,
                  height: Dimens.gapX2,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white, width: 4),
                    boxShadow: const [BoxShadow(blurRadius: 1)],
                    shape: BoxShape.circle,
                    color:
                        isCompleted ? AppColors.baseColor : AppColors.greyColor,
                  ),
                ),
                index != indexNumber
                    ? Expanded(
                        child: Container(
                          height: Dimens.gapX0_5,
                          color: isCompleted
                              ? AppColors.baseColor
                              : AppColors.greyColor,
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import '../app/routes/app_routes.dart';
import '../app/themes/app_colors.dart';
import '../app/modules/home/controllers/home_controller.dart';

class CommonStations extends StatelessWidget {
  HomeController controller = Get.find();
  CommonStations({Key? key}) : super(key: key);
  final List<String> stationNames = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Dimens.screenWidth, // Set the desired width here
        child: StepProgressIndicator(
          totalSteps: 8,
          currentStep: controller.currentStep.value,
          size: 60,
          selectedColor: AppColors.baseColor,
          unselectedColor: AppColors.greyColor,
          customStep: (index, color, _) {
            return GestureDetector(
              onTap: () {
                controller.setCurrentStep(index);
                switch (index) {
                  case 0:
                    Get.toNamed(Routes.HOME);
                    break;
                  case 1:
                    // Get.toNamed(Routes.BLOODPRESSURE);
                    break;
                  case 2:
                    // Get.toNamed(Routes.PROBLEMSVIEW);
                    break;
                  default:
                    break;
                }
              },
              child: index == 0
                  ? Point(
                      triangleHeight: 17.0,
                      edge: Edge.RIGHT,
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        color: controller.currentStep.value == index
                            ? AppColors.baseColor
                            : AppColors.greyColor,
                        child: Center(
                          child: Text(
                            'Station ${stationNames[index]}',
                            style: TextStyle(
                              fontSize: 20,
                              color: controller.currentStep.value == index
                                  ? AppColors.white
                                  : AppColors.blackColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Chevron(
                      triangleHeight: 15.0,
                      edge: Edge.RIGHT,
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        color: controller.currentStep.value == index
                            ? AppColors.baseColor
                            : AppColors.greyColor,
                        child: Center(
                          child: Text(
                            'Station ${stationNames[index]}',
                            style: TextStyle(
                              fontSize: 19,
                              color: controller.currentStep.value == index
                                  ? AppColors.white
                                  : AppColors.blackColor,
                            ),
                          ),
                        ),
                      ),
                    ),
            );
          },
        ));
  }
}

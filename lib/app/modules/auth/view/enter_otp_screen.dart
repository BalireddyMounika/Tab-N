import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/auth/conttroller/login_controller.dart';
import 'package:nivish/app/modules/auth/widget/common_button.dart';
import 'package:nivish/app/modules/auth/widget/middle_container.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:pinput/pinput.dart';

class EnterOtpScreen extends GetView<LoginController> {
  const EnterOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          leadingWidth: 0,
          title: Image.asset(
            AppImages.icHeaderLogo,
            width: 100,
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
                height: Dimens.screenHeight,
                width: Dimens.screenWidth,
                child: Image.asset(AppImages.login, fit: BoxFit.fill)),
            MiddleContainer(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: Dimens.gapX4),
                    Text(
                      'HCP Login',
                      style: AppStyles.tsBlackSemiBold24
                          .copyWith(fontSize: AppUtils.isTab() ? 32 : 26),
                    ),
                    const SizedBox(height: Dimens.gapX1),
                    Text(
                      'OTP',
                      style: AppStyles.tsBlackMedium14
                          .copyWith(fontSize: AppUtils.isTab() ? 18 : 14),
                    ),
                    const SizedBox(height: Dimens.gapX3),
                    const Text(
                      'Enter the 4 digits code that was sent to your mail for verification starting with',
                      textAlign: TextAlign.center,
                      style: AppStyles.tsBlackRegular14,
                    ),
                    const SizedBox(height: Dimens.gapX1),
                    Text(
                      controller.emailWrapper.controller.text,
                      style: AppStyles.tsBlackMedium14
                          .copyWith(fontSize: AppUtils.isTab() ? 18 : 14),
                    ),
                    const SizedBox(height: Dimens.gapX4),
                    Pinput(
                      length: 4,
                      controller: controller.otpController,
                      onChanged: (v) {
                        controller.otpController.text = v;
                      },
                      onCompleted: (otp) {
                        controller.verifyOtp(otp: otp);
                      },
                    ),
                    const SizedBox(height: Dimens.gapX3),
                    RichText(
                      text: TextSpan(
                        text: "Didn't recive the code ?   ",
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                controller.sendOtp();
                                controller.otpController.clear();
                              },
                            text: "Resend",
                            style: const TextStyle(
                              color: AppColors.baseColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: Dimens.gapX10),
                    CommonButton(
                      name: 'Login',
                      onTap: () => controller.verifyOtp(
                          otp: controller.otpController.text),
                    ),
                    const SizedBox(height: Dimens.gapX2),
                    RichText(
                      text: TextSpan(
                        text: "Change  mail id ?   ",
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.back(),
                            text: "Back",
                            style: const TextStyle(
                              color: AppColors.baseColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ).paddingSymmetric(
                    horizontal:
                        AppUtils.isTab() ? Dimens.paddingX5 : Dimens.paddingX3),
              ),
            )
          ],
        ),
      ),
    );
  }
}

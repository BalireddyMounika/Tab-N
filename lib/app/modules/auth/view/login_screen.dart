import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/auth/conttroller/login_controller.dart';
import 'package:nivish/app/modules/auth/widget/common_button.dart';
import 'package:nivish/app/modules/auth/widget/login_text_input.dart';
import 'package:nivish/app/modules/auth/widget/middle_container.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/validators.dart';
import 'package:nivish/widgets/common_text.dart';

import '../../../../widgets/text/common_text.dart';

FocusNode passwordFocusNode = FocusNode();

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              child: Form(
                key: controller.loginFormKey,
                child: Column(
                  children: [
                    const SizedBox(height: Dimens.gapX4),
                    Text(
                      'Health Camp Login',
                      style: AppStyles.tsBlackSemiBold24
                          .copyWith(fontSize: AppUtils.isTab() ? 32 : 26),
                    ),
                    const SizedBox(height: Dimens.gapX4),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.baseColor),
                          borderRadius:
                              BorderRadius.circular(AppUtils.isTab() ? 10 : 8)),
                      width: Dimens.screenWidth,
                      height: AppUtils.isTab() ? 58 : 42,
                      child: Obx(
                        () => Row(
                          children: [
                            _buildTabBtn(
                              isSelected: controller.isLoginWithOtp.value,
                              name: 'Password',
                              onTap: () => controller.onCheckLoginWithOtp(),
                            ),
                            Dimens.widthGap1,
                            _buildTabBtn(
                                onTap: () => controller.onCheckLoginWithOtp(),
                                isSelected: !controller.isLoginWithOtp.value,
                                name: 'OTP'),
                          ],
                        ).paddingAll(AppUtils.isTab() ? Dimens.paddingX1 : 4),
                      ),
                    ).paddingSymmetric(
                        horizontal:
                            AppUtils.isTab() ? Dimens.gapX6 : Dimens.paddingX3),
                    const SizedBox(height: Dimens.gapX6),
                    const CommonText(
                      text: 'Email',
                    ),
                    const SizedBox(height: Dimens.gapX1),
                    LoginTextInput(
                        hintText: 'Email',
                        validator: mandatoryValidator,
                        controller: controller.emailWrapper),
                    Obx(
                      () => Visibility(
                        visible: !controller.isLoginWithOtp.value,
                        child: Column(
                          children: [
                            const CommonText(
                              text: 'Password',
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            LoginTextInput(
                              obscureText: controller.isObscurePassword.value,
                              focusNode: passwordFocusNode,
                              obscuringCharacter: '*',
                              hintText: 'password',
                              controller: controller.passwordWrapper,
                              suffixIcon: InkWell(
                                  onTap: () =>
                                      controller.handelObscurePassword(),
                                  child: Icon(
                                    controller.isObscurePassword.value
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility,
                                    color: AppColors.baseColor,
                                  )).paddingOnly(right: Dimens.gapX2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: Dimens.gapX5),
                    CommonButton(
                      name: 'Login',
                      onTap: () => controller.handleLogin(),
                    ).paddingSymmetric(horizontal: Dimens.paddingX4),
                  ],
                ).paddingSymmetric(
                    horizontal:
                        AppUtils.isTab() ? Dimens.paddingX5 : Dimens.paddingX3),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildTabBtn(
      {required bool isSelected,
      required String name,
      required Function() onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: isSelected ? Colors.white : AppColors.baseColor,
              borderRadius: BorderRadius.circular(AppUtils.isTab() ? 10 : 8)),
          child: Center(
            child: AppUtils.isTab()
                ? title(
                    text: name,
                    textColor:
                        isSelected ? AppColors.blackColor : AppColors.white,
                  )
                : label(
                    text: name,
                    textColor:
                        isSelected ? AppColors.blackColor : AppColors.white,
                  ),
          ),
        ),
      ),
    );
  }
}

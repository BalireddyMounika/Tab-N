import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/auth/widget/common_button.dart';
import 'package:nivish/app/modules/auth/widget/login_text_input.dart';
import 'package:nivish/app/modules/dashboard/dashboard_controller.dart';

import 'package:nivish/app/modules/dashboard/status_bar.dart';

import 'package:nivish/app/modules/dashboard/widget/id_card_view.dart';

import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/common_dialog.dart';
import 'package:nivish/widgets/common_text.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool haveStationAccess = AppStorage.getUser().stations?.isNotEmpty ?? false;
    return Scaffold(
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverAppBar(
          pinned: true,
          automaticallyImplyLeading: false,
          title: Image.asset(
            AppImages.icHeaderLogo,
            width: 100,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: InkWell(
                onTap: () => Get.dialog(
                  CommonDialog(
                    title: 'Do you want to logout ?',
                    btnOneTitle: 'Confirm',
                    btnTwoTitle: 'Back',
                    btnOneOnTap: () {
                      AppStorage.clear();
                      Get.offAllNamed(Routes.LOGIN);
                    },
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.power_settings_new_outlined,
                    ),
                    Dimens.widthGap1,
                    Text(
                      "Log Out",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                decoration:
                    const BoxDecoration(color: AppColors.white, boxShadow: [
                  BoxShadow(
                    color: AppColors.blackColor,
                    blurRadius: 3.0,
                  )
                ]),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: AppUtils.isTab() ? 40 : 30,
                        backgroundImage: NetworkImage(
                          '${AppStorage.getUser().uploadYourPhoto}',
                          // 'https://img.freepik.com/premium-vector/doctor-with-stethoscope-around-his-neck-is-standing-front-blue-background_596437-183.jpg?w=1060'),
                        )),
                    Dimens.widthGap2,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${AppStorage.getUser().fullName}',
                            style: AppStyles.tsBlackMedium16),
                        const SizedBox(height: Dimens.gapX0_5),
                        const Text('Nivish Health Camp',
                            style: AppStyles.tsBlackRegular14),
                        const SizedBox(height: Dimens.gapX1),
                        Visibility(
                          child: Text(
                              haveStationAccess
                                  ? controller.getStationName(
                                      AppStorage.getUser()
                                              .stations
                                              ?.first
                                              .stationID ??
                                          0)
                                  : 'You Don\'t have any station access',
                              style: AppStyles.tsBlackRegular14.copyWith(
                                  color: haveStationAccess
                                      ? AppColors.info
                                      : AppColors.error)),
                        ),
                      ],
                    )
                  ],
                ).paddingSymmetric(
                    horizontal: Dimens.paddingX4, vertical: Dimens.gapX1),
              ),
              const SizedBox(height: Dimens.gapX2),
              Column(
                children: [
                  const CommonText(text: 'Search'),
                  const SizedBox(height: Dimens.gapX1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: LoginTextInput(
                          keyboardType: TextInputType.number,
                          hintText: 'UIN Number',
                          controller: controller.uinWrapper,
                          isSuffix: true,
                          onTapSufix: () {
                            // AppUtils.getBottomSheet(children: [
                            //   Container(
                            //     height: Dimens.screenHeight - 100,
                            //     child: QRView(
                            //       key: controller.qrKey,
                            //       onQRViewCreated: controller.onQRViewCreated,
                            //     ),
                            //   )
                            // ]);
                          },
                        ),
                      ),
                      SizedBox(
                          width:
                              AppUtils.isTab() ? Dimens.gapX4 : Dimens.gapX2),
                      Expanded(
                          flex: 1,
                          child: CommonButton(
                              name: 'Search',
                              onTap: () {
                                controller.getStudentDetail();
                              }))
                    ],
                  ),
                  SizedBox(height: Dimens.fGapX40),
                  Obx(
                    () => controller.student.value != null
                        ? StudentCardWidget(
                            studentName:
                                controller.student.value?.studentFirstName ??
                                    '',
                            dob: controller.student.value?.studentDOB ?? '',
                            ofClass: controller.student.value?.className ?? '',
                            sectionName:
                                controller.student.value?.sectionName ?? '',
                            uin: controller.student.value?.uin ?? '',
                            gender: controller.student.value?.gender ?? '',
                            uploadPhoto:
                                controller.student.value?.uploadPhoto ?? '',
                            qrcode: controller.student.value?.qrcode ?? '')
                        : const SizedBox.shrink(),
                  ),
                ],
              ).paddingSymmetric(horizontal: Dimens.gapX3),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: CustomStatusBar(),
    );
  }

  Widget studentCard(
      {required String studentName,
      required String dob,
      required String ofClass}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.baseColor)),
      height: 200,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name : $studentName', style: AppStyles.tsBlackBold16),
          const SizedBox(height: Dimens.gapX1),
          Text('DOB : $dob', style: AppStyles.tsBlackBold16),
          const SizedBox(height: Dimens.gapX1),
          Text('Class : $ofClass', style: AppStyles.tsBlackBold16),
        ],
      ),
    );
  }
}

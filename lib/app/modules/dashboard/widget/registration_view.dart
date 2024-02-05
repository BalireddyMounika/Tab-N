import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/app_utils.dart';
import '../../../data/values/dimens.dart';
import '../../../data/values/images.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../../auth/widget/common_button.dart';
import '../dashboard_controller.dart';

class RegistrationView extends GetView<DashboardController> {
  final String studentName;
  final String dob;
  final String ofClass;
  final String sectionName;
  final String uin;
  final String gender;
  final String uploadPhoto;
  final String qrcode;

  const RegistrationView({
    Key? key,
    required this.studentName,
    required this.dob,
    required this.ofClass,
    required this.sectionName,
    required this.uin,
    required this.gender,
    required this.uploadPhoto,
    required this.qrcode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [BoxShadow(blurRadius: 1)]),
          height: Dimens.screenHeightX22,
          width: Dimens.screenWidthX12,
          child: AppUtils.isTab()
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          AppImages.icHeaderLogo,
                          color: AppColors.baseColor,
                          width: Dimens.screenWidthXFourth,
                        ),
                        SizedBox(
                          height: Dimens.screenHeightX3,
                          width: Dimens.screenWidthX12,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Positioned(
                                top: 90,
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    padding: const EdgeInsets.only(left: 20.0),
                                    decoration: const BoxDecoration(
                                      color: AppColors.baseColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(60),
                                        bottomRight: Radius.circular(60),
                                      ),
                                      boxShadow: [BoxShadow(blurRadius: 1)],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Dimens.heightGap4,
                                        Text(studentName,
                                            style: AppStyles.tsSWhiteSemi18),
                                        const SizedBox(height: Dimens.gapX1),
                                        Text(uin,
                                            style: AppStyles.tsSWhiteSemi18),
                                        const SizedBox(height: Dimens.gapX1),
                                        Text('$ofClass $sectionName',
                                            style: AppStyles.tsSWhiteSemi18),
                                      ],
                                    )),
                              ),
                              Positioned(
                                top: 1,
                                child: uploadPhoto.isNotEmpty
                                    ? CircleAvatar(
                                        radius: 70,
                                        backgroundColor:
                                            AppColors.stationBgColor,
                                        child: ClipOval(
                                          child: Image.network(
                                            uploadPhoto,
                                            fit: BoxFit.cover,
                                            width: 150,
                                            height: 150,
                                          ),
                                        ),
                                      )
                                    : const Text(
                                        "There is no image for this student"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: Dimens.screenHeightX3,
                          width: Dimens.screenWidthX12,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Positioned(
                                  top: 30,
                                  child: Container(
                                    width: 200,
                                    height: 200,
                                    padding: const EdgeInsets.only(left: 20.0),
                                    decoration: const BoxDecoration(
                                      color: AppColors.baseColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(60),
                                        bottomRight: Radius.circular(60),
                                      ),
                                      boxShadow: [BoxShadow(blurRadius: 1)],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(uin,
                                            style: AppStyles.tsSWhiteSemi18),
                                        const SizedBox(height: Dimens.gapX1),
                                        Text(gender,
                                            style: AppStyles.tsSWhiteSemi18),
                                        const SizedBox(height: Dimens.gapX1),
                                        Text("DOB $dob",
                                            style: AppStyles.tsSWhiteSemi18),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                top: 200,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 5,
                                        blurRadius: 15,
                                        offset: const Offset(0, 10),
                                      ),
                                    ],
                                  ),
                                  child: Image.network(
                                    qrcode,
                                    width: 110,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          AppImages.icHeaderLogo,
                          color: AppColors.baseColor,
                          width: Dimens.screenWidthXFourth,
                        ),
                      ],
                    )),
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Dimens.heightGap2,
                    Image.asset(
                      AppImages.icHeaderLogo,
                      color: AppColors.baseColor,
                      width: Dimens.screenWidthXFourth,
                    ),
                    Dimens.heightGap2,
                    SizedBox(
                      height: Dimens.screenHeightX3,
                      width: Dimens.screenWidthX12,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Positioned(
                            top: 90,
                            child: Container(
                                width: 200,
                                height: 200,
                                padding: const EdgeInsets.only(left: 20.0),
                                decoration: const BoxDecoration(
                                  color: AppColors.baseColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                  boxShadow: [BoxShadow(blurRadius: 1)],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Dimens.heightGap4,
                                    Text(studentName,
                                        style: AppStyles.tsSWhiteSemi16),
                                    const SizedBox(height: Dimens.gapX1),
                                    Text(uin, style: AppStyles.tsSWhiteSemi16),
                                    const SizedBox(height: Dimens.gapX1),
                                    Text('$ofClass $sectionName',
                                        style: AppStyles.tsSWhiteSemi16),
                                  ],
                                )),
                          ),
                          Positioned(
                            top: 5,
                            child: uploadPhoto.isNotEmpty
                                ? CircleAvatar(
                                    radius: 70,
                                    backgroundColor: AppColors.stationBgColor,
                                    child: ClipOval(
                                      child: Image.network(
                                        uploadPhoto,
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 150,
                                      ),
                                    ),
                                  )
                                : const Text(
                                    "There is no image for this student"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimens.screenHeightX3,
                      width: Dimens.screenWidthX12,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Positioned(
                              top: 30,
                              child: Container(
                                width: 200,
                                height: 200,
                                padding: const EdgeInsets.only(left: 20.0),
                                decoration: const BoxDecoration(
                                  color: AppColors.baseColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                  boxShadow: [BoxShadow(blurRadius: 1)],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(uin, style: AppStyles.tsSWhiteSemi16),
                                    const SizedBox(height: Dimens.gapX1),
                                    Text(dob, style: AppStyles.tsSWhiteSemi16),
                                    const SizedBox(height: Dimens.gapX1),
                                    Text(gender,
                                        style: AppStyles.tsSWhiteSemi16),
                                  ],
                                ),
                              )),
                          Positioned(
                            top: 160,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 6,
                                      offset: const Offset(0, 30),
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  qrcode,
                                  width: 130,
                                  height: 170,
                                )),
                          )
                        ],
                      ),
                    ),
                    Dimens.heightGap3,
                    Image.asset(
                      AppImages.icHeaderLogo,
                      color: AppColors.baseColor,
                      width: Dimens.screenWidthXFourth,
                    ),
                  ],
                ).paddingOnly(bottom: Dimens.gapX3))),
      Dimens.heightGap3,
      AppUtils.isTab()
          ? CommonButton(
              onTap: () {},
              name: "Verify & Register In",
            ).paddingOnly(left: Dimens.gapX15, right: Dimens.gapX15)
          : CommonButton(
              onTap: () {},
              name: "Verify & Register In",
            ).paddingOnly(left: Dimens.gapX8, right: Dimens.gapX8),
    ]);
  }
}

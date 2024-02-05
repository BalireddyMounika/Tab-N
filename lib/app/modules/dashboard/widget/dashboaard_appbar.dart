import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/common_dialog.dart';

class DashBoardAppBar extends StatelessWidget {
  const DashBoardAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 86,
      titleSpacing: 32.0,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimens.gapX2),
          Image.asset(
            AppImages.icHeaderLogo,
            width: 100,
          ),
          const SizedBox(height: Dimens.gapX1),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 32.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.power_settings_new_outlined,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(
                    CommonDialog(
                      title: 'Do you want to logout ?',
                      btnOneTitle: 'Confirm',
                      btnTwoTitle: 'Back',
                      btnOneOnTap: () {
                        AppStorage.clear();
                        Get.offAllNamed(Routes.LOGIN);
                      },
                    ),
                  );
                },
                child: const Text(
                  "Log Out",
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

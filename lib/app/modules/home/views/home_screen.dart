import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/station_body_model.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/home/widget/silver_appbar.dart';
import 'package:nivish/app/modules/station_A/views/station_a_view.dart';
import 'package:nivish/app/modules/station_A/widget/station_a_bottom_navigation.dart';
import 'package:nivish/app/modules/station_A/widget/station_a_stepper.dart';
import 'package:nivish/app/modules/station_B/views/station_b_view.dart';
import 'package:nivish/app/modules/station_B/widget/station_b_bottom_navigation.dart';
import 'package:nivish/app/modules/station_B/widget/station_b_stepper.dart';
import 'package:nivish/app/modules/station_C/views/station_c_view.dart';
import 'package:nivish/app/modules/station_C/widget/station_c_bottom_navigation.dart';
import 'package:nivish/app/modules/station_C/widget/station_c_stepper.dart';
import 'package:nivish/app/modules/station_D/views/station_d_view.dart';
import 'package:nivish/app/modules/station_D/widget/station_d_bottom_navigation.dart';
import 'package:nivish/app/modules/station_D/widget/station_d_stepper.dart';
import 'package:nivish/app/modules/station_E/views/station_e_view.dart';
import 'package:nivish/app/modules/station_E/widget/station_e_bottom_navigation.dart';
import 'package:nivish/app/modules/station_E/widget/station_e_stepper.dart';
import 'package:nivish/app/modules/station_F/views/station_f_view.dart';
import 'package:nivish/app/modules/station_F/widget/station_f_bottom_navigation.dart';
import 'package:nivish/app/modules/station_F/widget/station_f_stepper.dart';
import 'package:nivish/app/modules/station_G/views/station_G_view.dart';
import 'package:nivish/app/modules/station_G/widget/station_g_bottom_navigation.dart';
import 'package:nivish/app/modules/station_G/widget/station_g_stepper.dart';
import 'package:nivish/app/modules/station_H/views/station_H_view.dart';
import 'package:nivish/app/modules/station_H/widget/station_h_bottom_navigation.dart';
import 'package:nivish/app/modules/station_H/widget/station_h_stepper.dart';
import 'package:nivish/app/themes/app_colors.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SilverAppBar(),
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SliverAppBarDelegate(
                minHeight: 86.0, // Adjust the height as needed
                maxHeight: 86.0,
                child: Material(
                  elevation: 2,
                  child: Column(
                    children: [
                      Container(
                        color: AppColors.white,
                        child: Obx(() =>
                            stationWidget[controller.selectedStation.value]
                                ?.stepper ??
                            const SizedBox()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Obx(() =>
                      stationWidget[controller.selectedStation.value]?.body ??
                      const SizedBox()),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(() =>
            stationWidget[controller.selectedStation.value]?.bottom ??
            const SizedBox()),
      ),
    );
  }

  static final Map<String, StationsBodyModel> stationWidget = {
    AppStrings.stationA: StationsBodyModel(
        stepper: const StationAStepper(),
        body: const StationAView(),
        bottom: const StationABottomNavigation()),
    AppStrings.stationB: StationsBodyModel(
        stepper: const StationBStepper(),
        body: const StationBView(),
        bottom: const StationBBottomNavigation()),
    AppStrings.stationC: StationsBodyModel(
        stepper: const StationCStepper(),
        body: const StationCView(),
        bottom: const StationCBottomNavigation()),
    AppStrings.stationD: StationsBodyModel(
        stepper: const StationDStepper(),
        body: const StationDView(),
        bottom: const StationDBottomNavigation()),
    AppStrings.stationE: StationsBodyModel(
        stepper: const StationEStepper(),
        body: const StationEView(),
        bottom: const StationEBottomNavigation()),
    AppStrings.stationF: StationsBodyModel(
        stepper: const StationFStepper(),
        body: const StationFView(),
        bottom: const StationFBottomNavigation()),
    AppStrings.stationG: StationsBodyModel(
        stepper: const StationGStepper(),
        body: StationGView(),
        bottom: const StationGBottomNavigation()),
    AppStrings.stationH: StationsBodyModel(
        stepper: const StationHStepper(),
        body: const StationHView(),
        bottom: const StationHBottomNavigation()),
    // AppStrings.stationC: StationCView(),
  };
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

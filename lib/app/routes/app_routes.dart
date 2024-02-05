import 'package:get/get.dart';
import 'package:nivish/app/modules/auth/bindings/login_bindings.dart';
import 'package:nivish/app/modules/auth/view/enter_otp_screen.dart';
import 'package:nivish/app/modules/auth/view/login_screen.dart';
import 'package:nivish/app/modules/dashboard/dashboard_bindings.dart';
import 'package:nivish/app/modules/dashboard/dashboard_screen.dart';
import 'package:nivish/app/modules/home/bindings/home_bindings.dart';
import 'package:nivish/app/modules/home/views/home_screen.dart';
import 'package:nivish/app/modules/splash/bindings/splash_bindings.dart';
import 'package:nivish/app/modules/splash/views/splash_screen.dart';

import '../modules/station_B/tabs/station_B_BP_view.dart';

class Routes {
  static const SPLASH = '/splash';
  static const HOME = '/stationAHeight';

  static const BLOODPRESSURE = '/stationBBloodPressure';
  static const PROBLEMSVIEW = '/stationCProblems';

  static const LOGIN = '/login';
  static const OTP_SCREEN = '/otp/screen';
  static const DASHBOARD = '/dashboard';
}

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.BLOODPRESSURE,
      page: () => const StationBBloodPressureView(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: Routes.OTP_SCREEN,
      page: () => EnterOtpScreen(),
    ),

    GetPage(
        name: Routes.DASHBOARD,
        bindings: [DashboardBindings(), HomeBindings()],
        page: () => DashboardScreen()),

    // GetPage(
    //   name: Routes.BLOODPRESSURE,
    //   page: () => StationBBloodPressureView(),
    // ),
    // GetPage(
    //   name: Routes.PROBLEMSVIEW,
    //   page: () => StationCProblemsView(),
    // ),
    // GetPage(
    //   name: Routes.EXTRAOCULARVIEW,
    //   page: () => StationCExtraOcularView(),
    // ),
    // GetPage(
    //   name: Routes.RIGHTEYEVISUALLYCHALLENGEDVIEW,
    //   page: () => StationCRightEyeVisuallyChallengedView(),
    // ),
    // GetPage(
    //   name: Routes.LEFTEYEVISUALLYCHALLENGEDVIEW,
    //   page: () => StationCLeftEyeVisuallyChallengedView(),
    // ),
    // GetPage(
    //   name: Routes.VISUALACUITYVIEW,
    //   page: () => StationCVisualAcuityView(),
    // ),
    // GetPage(
    //   name: Routes.STATIONCOTHEROBSERVATION,
    //   page: () => StationCOtherObservationsView(),
    // ),
    // GetPage(
    //   name: Routes.STATIONCSAVE,
    //   page: () => StationCSaveView(),
    // ),
    // GetPage(
    //   name: Routes.STATIONEMOBILITY,
    //   page: () => StationEMobility(),
    //   binding: StationEBinding(),
    // ),
    // GetPage(
    //   name: Routes.STATIONEWEAR,
    //   page: () => StationEWear(),
    //   binding: StationEBinding(),
    // ),
    // GetPage(
    //   name: Routes.STATIONESPINE,
    //   page: () => StationESpineView(),
    //   binding: StationEBinding(),
    // ),
  ];
}

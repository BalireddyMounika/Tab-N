import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app_bindings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
        if (Get.isOverlaysOpen) Get.back();
      },
      child: ScreenUtilInit(
        designSize: Size(1024, 1366),
        child: GetMaterialApp(
          initialRoute: Routes.SPLASH,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
          initialBinding: AppBinding(),
          getPages: AppPages.pages,
          theme: ThemeData(
            datePickerTheme: const DatePickerThemeData(
              todayBorder: BorderSide(color: AppColors.baseColor),
              headerBackgroundColor: AppColors.baseColor,
              headerForegroundColor: AppColors.white,
            ),
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                foregroundColor: AppColors.white,
                backgroundColor: AppColors.baseColor,
                centerTitle: false),
          ),
        ),
      ),
    );
  }
}

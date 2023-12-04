import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:metrocay_cpt_user/src/core/config/routes.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';
import 'package:metrocay_cpt_user/src/features/auth/forgot_password/forgot_password_binding.dart';
import 'package:metrocay_cpt_user/src/features/auth/login/login_binding.dart';
import 'package:metrocay_cpt_user/src/features/auth/login/login_screen.dart';
import 'package:metrocay_cpt_user/src/features/features/confirmation/stop_requested.dart';
import 'package:metrocay_cpt_user/src/features/features/home/fullpage_view.dart';
import 'package:metrocay_cpt_user/src/features/features/home/home_binding.dart';
import 'package:metrocay_cpt_user/src/features/features/home/home_complete_trip.dart';
import 'package:metrocay_cpt_user/src/features/features/home/home_screen.dart';
import 'package:metrocay_cpt_user/src/features/features/nav_bar/nav_bar_screen.dart';
import 'package:metrocay_cpt_user/src/features/features/profile/edit_profile.dart';
import 'package:metrocay_cpt_user/src/features/features/profile/profile_screen.dart';
import 'package:metrocay_cpt_user/src/features/features/trip/trip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            theme: ThemeData(
              fontFamily: 'Metropolis',
              //primarySwatch: Colors.orange,
              colorScheme: const ColorScheme.light(
                primary: AppColors.orange,
              ),
              scaffoldBackgroundColor: AppColors.white,
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.white,
                elevation: 0,
              ),
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                elevation: 3,
                backgroundColor: AppColors.white,
              ),
            ),
            debugShowCheckedModeBanner: false,
            smartManagement: SmartManagement.full,
            home: Trip(),
            // initialRoute: AppRoutes.getHomeRoute(),
            // initialBinding:  HomeBinding(),
            // initialRoute: AppRoutes.getAddOrderOneRoute(),
            // initialBinding: AddOrderBinding(),
            getPages: AppRoutes.getPages(),
            onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
          );
        });
  }
}

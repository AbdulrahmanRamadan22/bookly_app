import 'package:bookly_app/core/helpers/routing/app_router.dart';
import 'package:bookly_app/core/helpers/routing/routers_string.dart';
import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: ColorsApp.primaryColor,
            appBarTheme: const AppBarTheme(
              backgroundColor: ColorsApp.primaryColor,
              elevation: 0.0,
            ),
          ),
          home: const SplashScreen(),
          initialRoute: Routes.splashScreen,
          onGenerateRoute: AppRouter().generateRoute,
        ),
      ),
    );
  }
}

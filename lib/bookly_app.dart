import 'package:bookly_app/core/helpers/routing/app_router.dart';
import 'package:bookly_app/core/helpers/routing/routers_string.dart';
import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorsApp.primaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          appBarTheme: const AppBarTheme(
            backgroundColor: ColorsApp.primaryColor,
            elevation: 0.0,
          ),
        ),
        home: const SplashScreen(),
        initialRoute: Routes.splashScreen,
        onGenerateRoute: AppRouter().generateRoute,
      ),
    );
  }
}

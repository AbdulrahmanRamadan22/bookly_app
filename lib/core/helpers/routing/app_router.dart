import 'package:bookly_app/features/home/ui/home_screen.dart';
import 'package:bookly_app/features/search/ui/search_screen.dart';
import 'package:bookly_app/features/splash/splash_screen.dart';

import '../../../features/home/ui/book_details_screen.dart';
import 'routers_string.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.bookDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const BookDetailsScreen(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (context) => const SearchScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

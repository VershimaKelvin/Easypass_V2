import 'package:easypass/core/navigators/route_extentions.dart';
import 'package:easypass/core/navigators/route_name.dart';
import 'package:easypass/features/auth/presentation/pages/login.dart';
import 'package:easypass/features/onboarding/pages/onboarding.dart';
import 'package:easypass/features/onboarding/pages/splash_screen.dart';
import 'package:flutter/material.dart';

Route<T> onGenerateRoute<T>(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.splashScreen:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SplashScreen(),
      );
    case RouteName.onBoardingPage:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const OnboardingScreen(),
      );
    case RouteName.login:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Login(),
      );

    default:
      return MaterialPageRoute<T>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

Route<T> _getPageRoute<T>({
  required String routeName,
  required Widget viewToShow,
}) {
  return PageRoutes.fadeThrough(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}

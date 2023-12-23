import 'package:flutter/material.dart';
import 'package:gaiatestingprototype/presentation/splash_screen/splash_screen.dart';
import 'package:gaiatestingprototype/presentation/login_screen/login_screen.dart';
import 'package:gaiatestingprototype/presentation/daily_container_screen/daily_container_screen.dart';
import 'package:gaiatestingprototype/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String dailyPage = '/daily_page';

  static const String dailyContainerScreen = '/daily_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        dailyContainerScreen: DailyContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}

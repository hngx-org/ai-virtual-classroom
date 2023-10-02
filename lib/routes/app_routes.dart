import '../core/app_export.dart';
import '../navigation/navigation.dart';
import '../navigation/navigation_binding.dart';
//import '../screens/onboarding/onboarding.dart';
import '../screens/onboarding/onboarding_binding.dart';
import '../screens/onboarding/onboarding_screen.dart';
import '../splash/splash.dart';
import '../splash/splash_binding.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onBoardingScreen = '/on_boarding_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onBoardingScreen,
      page: () => OnBoardingScreen(),
      bindings: [
        OnBoardingBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}

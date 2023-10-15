import 'package:boostapp/modules/find/find_binding.dart';
import 'package:boostapp/modules/find/find_screen.dart';
import 'package:boostapp/modules/login/login_binding.dart';
import 'package:boostapp/modules/login/login_screen.dart';
import 'package:boostapp/modules/main/main.screen.dart';
import 'package:boostapp/modules/main/main_binding.dart';
import 'package:boostapp/modules/register/register_binding.dart';
import 'package:boostapp/modules/register/register_screen.dart';
import 'package:boostapp/modules/reset/reset_binding.dart';
import 'package:boostapp/modules/reset/reset_screen.dart';
import 'package:boostapp/modules/splash/splash_binding.dart';
import 'package:boostapp/modules/splash/splash_screen.dart';
import 'package:boostapp/modules/tutorial/tutorial_binding.dart';
import 'package:boostapp/modules/tutorial/tutorial_intro_screen.dart';
import 'package:boostapp/modules/tutorial/tutorial_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const mainScreen = '/';
  static const splashScreen = '/splash';
  static const tutorialScreen = '/tutorial';
  static const tutorialIntroScreen = '/intro';
  static const loginScreen = '/login';
  static const findScreen = '/findPwd';
  static const resetScreen = '/resetPwd';
  static const registerScreen = '/register';

  static List<GetPage> pages = [
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: tutorialScreen,
      page: () => TutorialScreen(),
      bindings: [
        TutorialBinding(),
      ],
    ),
    GetPage(
      name: tutorialIntroScreen,
      page: () => TutorialIntroScreen(),
      bindings: [
        TutorialBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: findScreen,
      page: () => FindScreen(),
      bindings: [
        FindBinding(),
      ],
    ),
    GetPage(
      name: resetScreen,
      page: () => ResetScreen(),
      bindings: [
        ResetBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
  ];
}
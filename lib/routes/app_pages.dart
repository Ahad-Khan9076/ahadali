import 'package:get/get.dart';
import 'package:nexl_app/modules/auth/login_view.dart';
import 'package:nexl_app/modules/auth/signup_view.dart';
import 'package:nexl_app/modules/auth/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.SPLASH;

  static final routes = [
    GetPage(name: AppRoutes.SPLASH, page: () => SplashScreen()),
    GetPage(name: AppRoutes.LOGIN, page: () => LoginView()),
    GetPage(name: AppRoutes.SIGNUP, page: () => SignupView()),
    // GetPage(name: AppRoutes.HOME, page: () => HomeScreen()),
  ];
}

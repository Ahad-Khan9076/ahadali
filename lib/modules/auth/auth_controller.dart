import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexl_app/routes/app_routes.dart';

class AuthController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoggedIn = false.obs;

  void login() {
    // TODO: Add authentication logic
    isLoggedIn.value = true;
    Get.offAllNamed(AppRoutes.HOME);
  }

  void signup() {
    // TODO: Add signup logic
    isLoggedIn.value = true;
    Get.offAllNamed(AppRoutes.HOME);
  }

  void logout() {
    isLoggedIn.value = false;
    Get.offAllNamed(AppRoutes.LOGIN);
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}

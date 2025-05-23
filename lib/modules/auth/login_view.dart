import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexl_app/widgets/custom_text_field.dart';
import '../../../theme/app_colors.dart';
import '../../../widgets/custom_button.dart';

class LoginView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome back! Please login to your account.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 30),

              CustomTextField(
                controller: emailController,
                label: "Email",
                hintText: "your@email.com",
                icon: Icons.email,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                controller: passwordController,
                label: "Password",
                hintText: "Enter Password",
                icon: Icons.lock,
                obscureText: true,
              ),

              const SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('/forgotpassword');
                  },
                  child: const Text("Forgot Password?"),
                ),
              ),
              const SizedBox(height: 20),

              Center(
                child: CustomButton(
                  text: "Login",
                  onPressed: () {
                    // Get.toNamed('/home');
                  },
                  color: AppColors.primary,
                  onTap: () {
                    Get.toNamed('/home');
                  },
                ),
              ),

              const SizedBox(height: 25),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('/signup');
                  },
                  child: Center(
                    child: const Text("Don't have an account? Sign up"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

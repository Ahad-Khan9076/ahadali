import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexl_app/widgets/custom_text_field.dart';
import '../../../theme/app_colors.dart';
import '../../../widgets/custom_button.dart';

class ForgotPasswordView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
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
                "Forgot Password",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your email to receive password reset instructions.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 30),

              CustomTextField(
                controller: emailController,
                label: "Email",
                hintText: "your@email.com",
                icon: Icons.email,
              ),
              const SizedBox(height: 20),

              Center(
                child: CustomButton(
                  text: "Send Reset Link",
                  onPressed: () {
                    // Handle sending reset link
                  },
                  color: AppColors.primary,
                  onTap: () {},
                ),
              ),

              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Get.back(),
                  child: const Text("Back to Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

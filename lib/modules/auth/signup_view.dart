import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexl_app/widgets/custom_text_field.dart';
import '../../../theme/app_colors.dart';
import '../../../widgets/custom_button.dart';

class SignupView extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Sign up to get started!",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 10),

              // Input Fields
              CustomTextField(
                controller: nameController,
                label: "Name",
                hintText: "Ahad",
                icon: Icons.person,
              ),
              const SizedBox(height: 6),
              CustomTextField(
                controller: emailController,
                label: "Email",
                hintText: "ahadalikhan1525@gmail.com",
                icon: Icons.email,
              ),
              const SizedBox(height: 6),
              CustomTextField(
                controller: phoneController,
                label: "Phone",
                hintText: "+923090989076",
                icon: Icons.phone,
              ),
              const SizedBox(height: 6),
              CustomTextField(
                controller: passwordController,
                label: "Password",
                hintText: "Enter Password",
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 6),
              CustomTextField(
                controller: confirmPasswordController,
                label: "Confirm Password",
                hintText: "Confirm Password",
                icon: Icons.lock_outline,
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // Main Sign Up Button
              Center(
                child: CustomButton(
                  text: "Sign Up",
                  onPressed: () {
                    // Add your signup logic here
                  },
                  color: AppColors.primary,
                  onTap: () {},
                ),
              ),

              const SizedBox(height: 15),

              // Divider
              Row(
                children: const [
                  Expanded(child: Divider(thickness: 3)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "or continue with",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 3)),
                ],
              ),

              const SizedBox(height: 20),

              // Sign up with Google / iOS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _socialButton(
                    icon: Icons.g_mobiledata,
                    label: "Google",
                    color: Colors.red,
                    onPressed: () {},
                  ),
                  _socialButton(
                    icon: Icons.apple,
                    label: "Apple",
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Already have an account
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child: Center(
                    child: const Text(
                      "Already have an account? Login",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable Social Button
  Widget _socialButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: color, size: 28),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 2,
        side: const BorderSide(color: Colors.grey),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

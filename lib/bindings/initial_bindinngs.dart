import 'package:get/get.dart';
import 'package:nexl_app/modules/auth/auth_controller.dart';
// You can add more global controllers here in the future.

class InitialBindinngs extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
  }
}

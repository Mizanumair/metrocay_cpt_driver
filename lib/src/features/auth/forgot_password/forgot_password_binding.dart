import 'package:get/get.dart';
import 'package:metrocay_cpt_user/src/features/auth/forgot_password/forgot_password_controller.dart';

class ForgotPasswordBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<ForgotPasswordController>(ForgotPasswordController());
  }
}
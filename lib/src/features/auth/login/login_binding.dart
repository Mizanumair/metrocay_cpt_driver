import 'package:get/get.dart';
import 'package:metrocay_cpt_user/src/features/auth/login/login_controller.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<LoginController>(LoginController());
  }
}
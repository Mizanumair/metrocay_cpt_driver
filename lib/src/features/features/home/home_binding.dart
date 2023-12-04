import 'package:get/get.dart';
import 'package:metrocay_cpt_user/src/features/features/home/home_controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<HomeController>(HomeController());
  }
}
import 'package:get/get.dart';
import 'package:navabar_demo/controller/navController.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<NavController>(NavController(), permanent: true);
  }
}

import 'package:get/get.dart';

class NavController extends GetxController {
  var currentIndex = 0.obs;

  int activeIndex() => currentIndex.value;

  void changeIndex(int index) {
    this.currentIndex.value = index;
  }
}

import 'dart:async';

import 'package:get/get.dart';

class NavController extends GetxController {
  var currentIndex = 0.obs;

  int activeIndex() => currentIndex.value;

  void changeIndex(int index) {
    this.currentIndex.value = index;
  }
}

class NavBloc {
  StreamController streamController = StreamController<int>();

  Stream<int> get stream => streamController.stream;

  void changeIndex(int index) {
    streamController.sink.add(index);
  }

  void dispose() {
    streamController.close();
  }
}

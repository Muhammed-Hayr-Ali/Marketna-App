
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
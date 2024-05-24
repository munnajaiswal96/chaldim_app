import 'package:get/get.dart';

class CounterController extends GetxController {
  // Using RxInt for reactive state management
  var count = 0.obs;

  // Method to increment the count
  void increment() {
    count++;
  }
}

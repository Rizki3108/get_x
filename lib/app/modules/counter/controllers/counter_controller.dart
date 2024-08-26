import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;
  final anghka = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'Udah ahh cape',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.yellowAccent);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning', 'Udah nol ai kamu',
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    } else {
      bilangan.value--;
    }
  }

  void resetBilangan() {
    bilangan.value = 0;
    Get.snackbar('Peringatan', 'kita mulai dari nol ya');
  }
}

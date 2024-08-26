// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Hitung Ke :'),
            Obx(
              () => Text(controller.bilangan.value.toString()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.tambahSatu();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10), // Menambahkan jarak antara tombol
                ElevatedButton(
                  onPressed: () {
                    controller.kurangSatu();
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 10), // Menambahkan jarak antara tombol
                ElevatedButton(
                  onPressed: () {
                    controller.resetBilangan();
                  },
                  child: Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

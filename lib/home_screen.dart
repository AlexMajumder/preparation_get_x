import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (counterController){
            return Text(
            '${counterController.counter}',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          );
        }

        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // void _onTapAddButton() {
  //   _counter++;
  // }
}
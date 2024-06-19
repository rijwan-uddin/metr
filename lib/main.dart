import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metr/tics.dart';
import 'train_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Metro Rail Ticket System',
      home: TrainTicketSearch(),
    );
  }
}


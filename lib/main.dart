import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_app_getx/phone_number_screen.dart';
import 'package:otp_app_getx/phone_number_screen_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PhoneNumberScreenController phoneNumberScreenController =
      PhoneNumberScreenController();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PhoneNumberScreen(
        controller: phoneNumberScreenController,
      ),
    );
  }
}

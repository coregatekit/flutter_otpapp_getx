import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_app_getx/phone_number_screen_controller.dart';

class PhoneNumberScreen extends StatelessWidget {
  final PhoneNumberScreenController controller;
  final TextEditingController phoneNumberController = TextEditingController();

  PhoneNumberScreen({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              key: const Key('phone_number_input'),
              controller: phoneNumberController,
            ),
            TextButton(
              key: const Key('request_otp_button'),
              child: const Text('Send OTP'),
              onPressed: () {
                controller.submit(phoneNumberController.text);
              },
            ),
            Obx(() {
              return controller.isError.value
                  ? const Text('Invalid phone number')
                  : const SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:otp_app_getx/otp_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TextField(
              key: Key('phone_number_input'),
            ),
            TextButton(
              key: const Key('request_otp_button'),
              child: const Text('Send OTP'),
              onPressed: () {
                Get.to(const OtpScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

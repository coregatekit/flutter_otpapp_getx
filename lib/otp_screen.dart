import 'package:flutter/material.dart';
import 'package:otp_app_getx/otp_screen_controller.dart';

class OtpScreen extends StatelessWidget {
  final OtpScreenController controller;
  final TextEditingController otpController = TextEditingController();

  OtpScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('X'),
            TextFormField(
              controller: otpController,
              key: const Key('otp_input'),
              decoration: const InputDecoration(
                hintText: 'Enter OTP',
              ),
            ),
            ElevatedButton(
              key: const Key('submit_otp_button'),
              onPressed: () {
                controller.submit(otpController.text);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

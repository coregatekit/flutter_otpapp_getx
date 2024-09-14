import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  OtpScreen({super.key});

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
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

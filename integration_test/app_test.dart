import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp_app_getx/main.dart';

void main() {
  testWidgets('Verify Success', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Should see phone number input
    expect(find.byKey(const Key('phone_number_input')), findsOneWidget);

    // Fill valid phone number input

    // Tap on send otp button

    // Should see otp screen

    // Fill valid otp code

    // Tap on submit button

    // Should see success screen
  });
}

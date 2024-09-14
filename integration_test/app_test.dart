import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp_app_getx/main.dart';
import 'package:otp_app_getx/otp_screen.dart';

void main() {
  testWidgets('Verify Success', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Should see phone number input
    expect(find.byKey(const Key('phone_number_input')), findsOneWidget);

    // Fill valid phone number input
    await tester.enterText(
        find.byKey(const Key('phone_number_input')), '0661231111');

    // Tap on send otp button
    await tester.tap(find.byKey(const Key('request_otp_button')));
    await tester.pumpAndSettle();

    // Should see otp screen
    expect(find.byType(OtpScreen), findsOneWidget);

    // Fill valid otp code

    // Tap on submit button

    // Should see success screen
  });
}

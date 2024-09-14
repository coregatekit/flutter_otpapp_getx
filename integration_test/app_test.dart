import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp_app_getx/main.dart';
import 'package:otp_app_getx/otp_screen.dart';
import 'package:otp_app_getx/result_screen.dart';

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
    // await tester.enterText(find.byKey(const Key('otp_input')), '123456');

    // Tap on submit button
    // await tester.tap(find.byKey(const Key('submit_button')));
    // await tester.pumpAndSettle();

    // Should see success screen
    // expect(find.byType(ResultScreen), findsOneWidget);
  });

  testWidgets('Invalid phone number', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Should see phone number input
    expect(find.byKey(const Key('phone_number_input')), findsOneWidget);

    // Fill valid phone number input
    await tester.enterText(find.byKey(const Key('phone_number_input')), '0');

    // Tap on send otp button
    await tester.tap(find.byKey(const Key('request_otp_button')));
    await tester.pumpAndSettle();

    // Should see error message
    expect(find.text('Invalid phone number'), findsWidgets);
  });
}

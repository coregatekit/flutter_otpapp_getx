import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp_app_getx/phone_number_screen.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(const PhoneNumberScreen());

    tester.enterText(find.byKey(const Key('phone_number_input')), '0642225828');

    tester.tap(find.byKey(const Key('request_otp_button')));
    await tester.pumpAndSettle();
  });
}

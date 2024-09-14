import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mocktail/mocktail.dart';
import 'package:otp_app_getx/phone_number_screen.dart';
import 'package:otp_app_getx/phone_number_screen_controller.dart';

class MockPhoneNumberScreenController extends Mock
    implements PhoneNumberScreenController {}

void main() {
  Widget createPhoneNumberScreen(MockPhoneNumberScreenController controller) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: PhoneNumberScreen(
        controller: controller,
      ),
    );
  }

  testWidgets('Verify success', (WidgetTester tester) async {
    final mockController = MockPhoneNumberScreenController();

    await tester.pumpWidget(createPhoneNumberScreen(mockController));

    await tester.enterText(
        find.byKey(const Key('phone_number_input')), '0642225828');

    await tester.tap(find.byKey(const Key('request_otp_button')));

    verify(() => mockController.goToOtpScreen()).called(1);
  });
}

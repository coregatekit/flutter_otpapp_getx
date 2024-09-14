import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mocktail/mocktail.dart';
import 'package:otp_app_getx/otp_screen.dart';
import 'package:otp_app_getx/otp_screen_controller.dart';

class MockOtpScreenController extends Mock implements OtpScreenController {}

void main() {
  Widget createOtpScreen(MockOtpScreenController controller) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: OtpScreen(
        controller: controller,
      ),
    );
  }

  testWidgets('Verify otp success', (WidgetTester tester) async {
    final mockController = MockOtpScreenController();

    await tester.pumpWidget(createOtpScreen(mockController));

    await tester.enterText(find.byKey(const Key('otp_input')), '123456');

    await tester.tap(find.byKey(const Key('submit_otp_button')));

    verify(() => mockController.submit('123456')).called(1);
  });
}

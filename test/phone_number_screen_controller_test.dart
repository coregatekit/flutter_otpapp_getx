import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:otp_app_getx/phone_number_screen_controller.dart';
import 'package:otp_app_getx/route_adapter.dart';

class MockRouteAdapter extends Mock implements RouteAdapter {}

void main() {
  test('submit with valid phone number should navigate to OTP Screen', () {
    final mockRouteAdapter = MockRouteAdapter();

    final controller =
        PhoneNumberScreenController(routeAdapter: mockRouteAdapter);

    controller.submit('0642345820');

    verify(() => mockRouteAdapter.toOtpScreen()).called(1);
  });

  test('submit with invalid phone number should not navigate to otp screen',
      () {
    final mockRouteAdapter = MockRouteAdapter();

    final controller =
        PhoneNumberScreenController(routeAdapter: mockRouteAdapter);

    controller.submit('');

    verifyNever(() => mockRouteAdapter.toOtpScreen());
  });
}

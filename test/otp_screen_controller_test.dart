import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:otp_app_getx/otp_screen_controller.dart';
import 'package:otp_app_getx/route_adapter.dart';

class MockRouteAdapter extends Mock implements RouteAdapter {}

class MockHttpClient extends Mock implements Client {}

void main() {
  test('submit with valid otp should navigate to success result screen',
      () async {
    final mockRouterAdaptet = MockRouteAdapter();
    final mockHttpClient = MockHttpClient();
    when(() => mockHttpClient.post(
          Uri.parse('http://localhost:8888/otp/validate'),
          body: any(named: 'body'),
        )).thenAnswer(
      (_) async => Future.value(Response('{}', 200)),
    );

    final controller = OtpScreenController(
      httpClient: mockHttpClient,
      routeAdapter: mockRouterAdaptet,
    );

    await controller.submit('123456');

    verify(() => mockRouterAdaptet.toResultScreen()).called(1);
  });
}

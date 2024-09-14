import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:otp_app_getx/route_adapter.dart';

class OtpScreenController extends GetxController {
  late http.Client httpClient;
  late RouteAdapter routeAdapter;

  OtpScreenController({
    required this.httpClient,
    required this.routeAdapter,
  });

  submit(String otp) async {
    var response = await httpClient.post(
      Uri.parse('http://localhost:8888/otp/validate'),
      body: {
        'otp_code': otp,
      },
    );

    if (response.statusCode == 200) {
      routeAdapter.toResultScreen();
    }
  }
}

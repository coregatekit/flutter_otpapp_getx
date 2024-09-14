import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:otp_app_getx/otp_screen_controller.dart';
import 'package:otp_app_getx/result_screen.dart';

import 'otp_screen.dart';

class RouteAdapter {
  toOtpScreen() {
    Get.to(OtpScreen(
      controller: OtpScreenController(
        httpClient: Get.find<Client>(),
        routeAdapter: this,
      ),
    ));
  }

  toResultScreen() {
    Get.to(const ResultScreen());
  }
}

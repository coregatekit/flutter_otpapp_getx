import 'package:get/get.dart';
import 'package:otp_app_getx/otp_screen.dart';

class PhoneNumberScreenController extends GetxController {
  RxBool isError = false.obs;

  final RouteAdapter routeAdapter;

  PhoneNumberScreenController({required this.routeAdapter});

  void submit(String phoneNumber) {
    if (phoneNumber.length == 10) {
      routeAdapter.toOtpScreen();
      return;
    }
    isError.value = true;
  }
}

class RouteAdapter {
  toOtpScreen() {
    Get.to(const OtpScreen());
  }
}

import 'package:get/get.dart';
import 'package:otp_app_getx/otp_screen.dart';

class PhoneNumberScreenController extends GetxController {
  RxBool isError = false.obs;

  void goToOtpScreen() {
    Get.to(const OtpScreen());
  }
}

import 'package:get/get.dart';
import 'package:otp_app_getx/otp_screen.dart';

class PhoneNumberScreenController extends GetxController {
  RxBool isError = false.obs;

  void submit() {
    Get.to(const OtpScreen());
  }
}

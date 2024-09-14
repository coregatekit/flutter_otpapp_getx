import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:otp_app_getx/otp_screen.dart';

class PhoneNumberScreenController extends GetxController {
  void goToOtpScreen() {
    Get.to(const OtpScreen());
  }
}

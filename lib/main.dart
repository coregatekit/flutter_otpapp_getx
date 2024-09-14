import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:otp_app_getx/phone_number_screen.dart';
import 'package:otp_app_getx/phone_number_screen_controller.dart';
import 'package:otp_app_getx/route_adapter.dart';

void main() {
  runApp(MyApp(
    httpClient: Client(),
  ));
}

class MyApp extends StatelessWidget {
  final Client httpClient;
  const MyApp({super.key, required this.httpClient});

  @override
  Widget build(BuildContext context) {
    Get.put<Client>(httpClient);
    final phoneNumberScreentController = PhoneNumberScreenController(
      routeAdapter: RouteAdapter(),
    );

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PhoneNumberScreen(
        controller: phoneNumberScreentController,
      ),
    );
  }
}

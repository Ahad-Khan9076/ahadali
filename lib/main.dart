import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexl_app/bindings/initial_bindinngs.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Marketplace App',
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindinngs(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

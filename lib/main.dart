// PLUGINS
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste/app/modules/historico/historico_page.dart';
import 'package:teste/app/modules/home/home_binding.dart';

// SCREENS
import 'app/modules/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HistoricoPage(),
      initialBinding: HomeBinding(),
    );
  }
}

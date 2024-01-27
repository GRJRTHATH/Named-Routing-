import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:named_routing/second_page.dart';
import 'package:named_routing/third_page.dart';
import 'package:named_routing/unknown_page.dart';

import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "first",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/first", page: () => FirstPage()),
        GetPage(name: "/second", page: () => SecondPage()),
        GetPage(name: "/third", page: () => ThirdPage()),
      ],
      unknownRoute: GetPage(name: "/unknown", page: () => UnknownPage()),
    );
  }
}

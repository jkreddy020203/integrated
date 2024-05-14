// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:treva/planet_list.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: PlanetList(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:treva/planet_list.dart';
// import 'package:treva/planet_list_controller.dart'; // Import the controller

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: PlanetList(),
//       initialBinding: BindingsBuilder(() {
//         Get.lazyPut(() => PlanetListController());
//       }),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treva/planet_list.dart';
import 'package:treva/planet_list_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: PlanetListBinding(),
      getPages: [
        GetPage(
          name: '/planetList',
          page: () => const PlanetList(),
          binding: PlanetListBinding(),
        ),
      ],
      initialRoute: '/planetList',
    );
  }
}

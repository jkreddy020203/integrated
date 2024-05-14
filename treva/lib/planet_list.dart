// import 'package:flutter/material.dart';
// import 'package:treva/planet.dart';
// import 'package:treva/planet_card.dart';

// class PlanetList extends StatelessWidget {
//   PlanetList({super.key});
//   final List<Planet> planets = [
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 123, 30, 166),
//       appBar: AppBar(
//         title: const Center(child: Text('Treva')),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ...planets.map(
//               (planet) => PlanetCard(planet: planet),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// import 'package:treva/planet.dart';
// import 'package:treva/planet_card.dart';

// class PlanetList extends StatelessWidget {
//   PlanetList({super.key});

//   final List<Planet> planets = [
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'venus', image: 'assets/images/earth.jpg'),
//     Planet(name: 'saturn', image: 'assets/images/earth.jpg'),
//     Planet(name: 'mars', image: 'assets/images/earth.jpg'),
//     Planet(name: 'neptune', image: 'assets/images/earth.jpg'),
//     Planet(name: 'pluto', image: 'assets/images/earth.jpg'),
//     Planet(name: 'uranus', image: 'assets/images/earth.jpg'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 123, 30, 166),
//       appBar: AppBar(
//         title: const Center(child: Text('Treva')),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ...planets.map(
//               (planet) => PlanetCard(planet: planet),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:treva/planet_card.dart';
// import 'package:treva/planet_list_controller.dart'; // Import the controller

// class PlanetList extends StatelessWidget {
//   const PlanetList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Planet List'),
//       ),
//       body: GetBuilder<PlanetListController>(
//         builder: (controller) {
//           return ListView.builder(
//             itemCount: controller.planets.length,
//             itemBuilder: (context, index) {
//               return PlanetCard(planet: controller.planets[index]);
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// class PlanetListController extends GetxController {
//   RxList<Planet> planets = [
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'venus', image: 'assets/images/earth.jpg'),
//     Planet(name: 'saturn', image: 'assets/images/earth.jpg'),
//     Planet(name: 'mars', image: 'assets/images/earth.jpg'),
//     Planet(name: 'neptune', image: 'assets/images/earth.jpg'),
//     Planet(name: 'pluto', image: 'assets/images/earth.jpg'),
//     Planet(name: 'uranus', image: 'assets/images/earth.jpg'),
//   ].obs;

//   void deletePlanet(Planet planet) {
//     planets.remove(planet);
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:treva/planet.dart';
import 'package:treva/planet_card.dart';
import 'package:treva/planet_list_controller.dart';

class PlanetList extends StatelessWidget {
  const PlanetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 30, 166),
      appBar: AppBar(
        title: const Center(child: Text('Treva')),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            PlanetListCards(),
          ],
        ),
      ),
    );
  }
}

class PlanetListCards extends StatelessWidget {
  const PlanetListCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlanetListController>(
      builder: (controller) => Column(
        children: List.generate(
          controller.planets.length,
          (index) => PlanetCard(planet: controller.planets[index]),
        ),
      ),
    );
  }
}

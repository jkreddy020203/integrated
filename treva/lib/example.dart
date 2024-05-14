// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PlanetList(),
//     );
//   }
// }

// class Planet {
//   final String name;
//   final String image;

//   Planet({required this.name, required this.image});
// }

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
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('Planet List')),
//       ),
//       backgroundColor: Colors.pink,
//       body: SingleChildScrollView(
//         child: Column(
//           children:
//               planets.map((planet) => PlanetCard(planet: planet)).toList(),
//         ),
//       ),
//     );
//   }
// }

// class PlanetCard extends StatelessWidget {
//   final Planet planet;

//   const PlanetCard({super.key, required this.planet});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           color: Colors.purple,
//           height: 120,
//           margin: const EdgeInsets.only(left: 60, right: 40),
//           padding: const EdgeInsets.only(left: 60),
//           child: ListTile(
//             title: Text(
//               planet.name,
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Positioned(
//             left: -40,
//             child: SizedBox(
//               width: 140,
//               child: ClipRRect(
//                 borderRadius:
//                     const BorderRadius.horizontal(left: Radius.circular(8.0)),
//                 child: Image.asset(
//                   planet.image,
//                 ),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

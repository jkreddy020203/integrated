// import 'package:flutter/material.dart';
// import 'package:treva/planet.dart';

// class PlanetCard extends StatelessWidget {
//   const PlanetCard({super.key, required this.planet});

//   final Planet planet;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color.fromARGB(255, 52, 29, 186),
//       elevation: 8,
//       margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//       child: SizedBox(
//         height: 200,
//         width: 400,
//         child: Stack(
//           children: [
//             Positioned(
//               top: 20,
//               right: 200,
//               child: Text(
//                 planet.name,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontFamily: AutofillHints.givenName,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//             const Positioned(
//               top: 60,
//               right: 170,
//               child: Text(
//                 'Milky way galaxy',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 10,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 90,
//               right: 200,
//               child: Container(
//                 height: 2,
//                 width: 40,
//                 color: Colors.blue,
//               ),
//             ),
//             const Positioned(
//               top: 110,
//               right: 210,
//               child: Icon(
//                 Icons.location_on_sharp,
//                 color: Colors.white,
//               ),
//             ),
//             const Positioned(
//               top: 110,
//               right: 225,
//               child: Icon(
//                 Icons.location_on_sharp,
//                 color: Colors.white,
//               ),
//             ),
//             const Positioned(
//               top: 115,
//               right: 150,
//               child: Text(
//                 '3.711m/s',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             const Positioned(
//               top: 110,
//               right: 100,
//               child: Icon(
//                 Icons.arrow_downward,
//                 color: Colors.white,
//               ),
//             ),
//             const Positioned(
//               top: 110,
//               right: 115,
//               child: Icon(
//                 Icons.arrow_upward,
//                 color: Colors.white,
//               ),
//             ),
//             const Positioned(
//               top: 115,
//               right: 30,
//               child: Text(
//                 '3.711m/s',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             Positioned(
//               left: -50,
//               bottom: 20,
//               top: 0,
//               child: Image.asset(
//                 planet.image,
//                 width: 100,
//                 height: 100,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

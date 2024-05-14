// import 'package:flutter/material.dart';
// import 'package:treva/planet.dart';
//  import 'package:treva/planet_list_controller.dart';

// class PlanetCard extends StatelessWidget {
//   const PlanetCard({super.key, required this.planet});

//   final Planet planet;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Card(
//           elevation: 10,
//           margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
//           color: const Color.fromARGB(255, 51, 1, 138),
//           child: SizedBox(
//             height: 200,
//             child: Row(
//               children: [
//                 const SizedBox(
//                   width: 100,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       planet.name,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text(
//                       'Milkyway Galaxy',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       color: Colors.blue,
//                       width: 15,
//                       height: 4,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Row(
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.location_on_sharp,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               '3.7111m/s',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 30,
//                             ),
//                             Icon(
//                               Icons.arrow_downward,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               '3.7111m/s',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: const ButtonStyle(
//                         backgroundColor: MaterialStatePropertyAll(
//                           Color.fromARGB(255, 64, 61, 154),
//                         ),
//                         mouseCursor:
//                             MaterialStatePropertyAll(SystemMouseCursors.click),
//                       ),
//                       child:
//                           const Icon(Icons.delete_rounded, color: Colors.white),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: 70,
//           left: -10,
//           child: Container(
//             width: 120,
//             height: 70,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage(
//                   planet.image,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:treva/planet.dart';
// // import 'package:treva/planet_list.dart';
// import 'package:treva/planet_list_controller.dart';

// class PlanetCard extends GetView<PlanetListController> {
//   const PlanetCard({super.key, required this.planet});

//   final Planet planet;

//   // PlanetListController controller = Get.put(PlanetListController());

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Card(
//           elevation: 10,
//           margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
//           color: const Color.fromARGB(255, 51, 1, 138),
//           child: SizedBox(
//             height: 200,
//             child: Row(
//               children: [
//                 const SizedBox(
//                   width: 100,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       planet.name,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text(
//                       'Milkyway Galaxy',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       color: Colors.blue,
//                       width: 15,
//                       height: 4,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Row(
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.location_on_sharp,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               '3.7111m/s',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 30,
//                             ),
//                             Icon(
//                               Icons.arrow_downward,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               '3.7111m/s',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {
//                         controller.deletePlanet(planet);
//                       },
//                       style: const ButtonStyle(
//                         backgroundColor: MaterialStatePropertyAll(
//                           Color.fromARGB(255, 64, 61, 154),
//                         ),
//                         mouseCursor:
//                             MaterialStatePropertyAll(SystemMouseCursors.click),
//                       ),
//                       child:
//                           const Icon(Icons.delete_rounded, color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: 70,
//           left: -10,
//           child: Container(
//             width: 120,
//             height: 70,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage(
//                   planet.image,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treva/planet.dart';
import 'package:treva/planet_list_controller.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({Key? key, required this.planet}) : super(key: key);

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 10,
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          color: const Color.fromARGB(255, 51, 1, 138),
          child: SizedBox(
            height: 200,
            child: Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      planet.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Milkyway Galaxy',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.find<PlanetListController>().deletePlanet(planet);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 64, 61, 154),
                        ),
                        mouseCursor: MaterialStateProperty.all(
                            SystemMouseCursors.click),
                      ),
                      child: const Icon(Icons.delete_rounded,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: -10,
          child: Container(
            width: 120,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  planet.image,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

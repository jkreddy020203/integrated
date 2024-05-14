// import 'package:treva/planet.dart';
// import 'package:get/get.dart';

// class PlanetListController extends GetxController {
//   RxList<Planet> planets = [
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//     Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
//   ].obs;

//   void deletePlanet(Planet planet) {
//     planets.remove(planet);
//   }
// }

import 'package:get/get.dart';
import 'package:treva/planet.dart';

class PlanetListController extends GetxController {
  RxList<Planet> planets = [
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
    Planet(name: 'venus', image: 'assets/images/earth.jpg'),
    Planet(name: 'saturn', image: 'assets/images/earth.jpg'),
    Planet(name: 'mars', image: 'assets/images/earth.jpg'),
    Planet(name: 'neptune', image: 'assets/images/earth.jpg'),
    Planet(name: 'pluto', image: 'assets/images/earth.jpg'),
    Planet(name: 'uranus', image: 'assets/images/earth.jpg'),
  ].obs;

  void deletePlanet(Planet planet) {
    planets.remove(planet);
    update();
  }
}

class PlanetListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlanetListController>(() => PlanetListController());
  }
}

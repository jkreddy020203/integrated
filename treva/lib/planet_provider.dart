import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:treva/planet.dart';

class PlanetProvider extends ChangeNotifier {
  final List<Planet> _planets = [
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
    Planet(name: 'Earth', image: 'assets/images/earth.jpg'),
  ];

  List<Planet> get planets => _planets;

  void deletePlanet(Planet planet) {
    _planets.remove(planet);
    notifyListeners();
  }
}

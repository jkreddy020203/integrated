import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key, required this.child});

  final StatefulNavigationShell child;

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Text('Nike Logo'),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: NavigationRail(
                    labelType: NavigationRailLabelType.all,
                    selectedIndex: widget.child.currentIndex,
                    selectedLabelTextStyle: const TextStyle(
                      color: Colors.amber,
                    ),
                    onDestinationSelected: (int index) {
                      widget.child.goBranch(index);
                    },
                    // backgroundColor: Colors.pink,
                    destinations: const [
                      NavigationRailDestination(
                        indicatorColor: Colors.green,
                        icon: Icon(Icons.person),
                        label: Text('Manage Customer'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.person_pin_outlined),
                        label: Text('Add Customer'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.person_add_alt_sharp),
                        label: Text('My Team'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.settings),
                        label: Text('Account Settings'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: widget.child)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/build_app_bar.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildAppBar(
          title: 'My Team',
        ),
      ],
    );
  }
}

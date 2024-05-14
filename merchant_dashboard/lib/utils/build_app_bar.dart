import 'package:flutter/material.dart';

class BuildAppBar extends StatefulWidget {
  const BuildAppBar({super.key, required this.title});

  final String title;

  @override
  State<BuildAppBar> createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      actions: [
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
        SizedBox(width: 5),
        Text('Comment'),
        SizedBox(width: 5),
        Text('Hello'),
        SizedBox(width: 5)
      ],
      shape: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}

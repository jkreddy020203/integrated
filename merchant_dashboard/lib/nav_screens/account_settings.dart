import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/build_app_bar.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildAppBar(
          title: 'Account Settings',
        ),
      ],
    );
  }
}

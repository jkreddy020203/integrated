import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Otp',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          OtpTextField(
            numberOfFields: 4,
            autoFocus: true,
            borderColor: Colors.black,
            disabledBorderColor: Colors.black,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            onSubmit: (value) {
              if (value == "1111") {
                context.go('/manage_customer');
              } else {
                context.go('/login');
              }
            },
          ),
        ],
      ),
    );
  }
}

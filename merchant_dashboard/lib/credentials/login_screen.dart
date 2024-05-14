import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  RegExp get _emailRegex => RegExp(r'^\S+@\S+$');

  TextEditingController tontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 150),
        height: 400,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Container(
                width: 200,
                child: TextFormField(
                  controller: tontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    if (tontroller.text == 'jk@g.m') {
                      context.go('/otp');
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!_emailRegex.hasMatch(value)) {
                      return 'Email address is not valid';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (tontroller.value.text == 'jk@g.m') {
                    context.go('/otp');
                  }
                },
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

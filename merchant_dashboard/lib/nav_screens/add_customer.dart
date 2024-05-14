import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/build_app_bar.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  final _formKey = GlobalKey<FormState>();
  final firstName = TextEditingController();
  final lastName = TextEditingController();

  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  late RegExp regExp = RegExp(patttern);

  static const pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  final regex = RegExp(pattern);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildAppBar(title: 'Add Customer'),
        SizedBox(height: 10),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Fill info to create new customer'),
                      Container(
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == '') {
                              return 'First Name cannot be empty.';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Last Name',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == '') {
                              return 'Last Name cannot be empty.';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          validator: (value) {
                            if (value == '') {
                              return 'enter email address';
                            } else if (!regex.hasMatch(value!)) {
                              return 'Enter a valid email address';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value == '') {
                              return 'Mobile number cannot be nothing';
                            } else if (!regExp.hasMatch(value)) {
                              return 'Please enter valid mobile number';
                            }
                            return null;
                          },
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        child: Text('Submit and add Customer'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

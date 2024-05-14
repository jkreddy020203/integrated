import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:merchant_dashboard/screens/search_screen.dart';
import 'package:merchant_dashboard/screens/state1.dart';
import 'package:merchant_dashboard/screens/state2.dart';
import 'package:merchant_dashboard/screens/state3.dart';
import 'package:merchant_dashboard/screens/state4.dart';
import 'package:merchant_dashboard/utils/build_app_bar.dart';

class ManageCustomerScreen extends StatefulWidget {
  const ManageCustomerScreen({super.key});

  @override
  State<ManageCustomerScreen> createState() => _ManageCustomerScreenState();
}

class _ManageCustomerScreenState extends State<ManageCustomerScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  String? searchQuery;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildAppBar(title: 'Manage Customer'),
        SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'Worry not! All your Invoices and payments are fetched here'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 300,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            searchQuery = value;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.red),
                          hintText: 'Search by Customer Name',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.go('/add_customer');
                          },
                          icon: Icon(
                            Icons.add_box_rounded,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('ADD CUSTOMER'),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                searchQuery != null && searchQuery!.isNotEmpty
                    ? Expanded(child: SearchScreen(searchQuery: searchQuery))
                    : Expanded(
                        child: DefaultTabController(
                          length: 4,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TabBar(
                                  controller: _controller,
                                  tabs: const [
                                    Tab(text: 'All customers'),
                                    Tab(text: 'Active customers'),
                                    Tab(text: 'Stopped customers'),
                                    Tab(text: 'Hidden customers')
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _controller,
                                  children: const [
                                    State1(),
                                    State2(),
                                    State3(),
                                    State4(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

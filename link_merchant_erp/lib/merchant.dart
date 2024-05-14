// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:link_merchant_erp/build_app_bar.dart';
import 'package:link_merchant_erp/themes/app_colors.dart';
import 'package:link_merchant_erp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class Merchant extends StatefulWidget {
  const Merchant({super.key});

  @override
  State<Merchant> createState() => _MerchantState();
}

class _MerchantState extends State<Merchant>
    with SingleTickerProviderStateMixin {
  late final DarkThemeProvider themeChangeProvider;
  late TabController tabController;
  int num = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    themeChangeProvider = DarkThemeProvider();
    tabController.addListener(tabControllerListener);
  }

  void tabControllerListener() {
    setState(() {
      num = tabController.index;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    tabController.removeListener(tabControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => themeChangeProvider,
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, child) {
          return Column(
            children: [
              buildAppBar(context),
              const SizedBox(height: 25),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Linking to ERP and proceed to your dashboard',
                        style: TextStyle(
                          color: AppColors.kDarkGrayNight,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TabBar(
                        controller: tabController,
                        tabs: [
                          Row(
                            children: [
                              SizedBox(width: 5),
                              Tab(
                                child: Text(
                                  'Step 1: ',
                                  style: TextStyle(
                                    color: num == 0 ? Colors.blue : Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              num == 0
                                  ? const Text(
                                      'Login to your ERP Details',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  : Text(''),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 5),
                              Tab(
                                child: Text(
                                  'Step 2: ',
                                  style: TextStyle(
                                    color: num == 0 ? Colors.blue : Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              num == 1
                                  ? const Text(
                                      'Enter ERP DB & EndPoints',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  : Text(''),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 5),
                              Tab(
                                child: Text(
                                  'Step 3: ',
                                  style: TextStyle(
                                    color: num == 0 ? Colors.blue : Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              num == 2
                                  ? const Text(
                                      'Fetching and Imposing your data',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  : Text(''),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: SizedBox(
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            Step1Content(tabController: tabController),
                            Step2Content(tabController: tabController),
                            const Step3Content(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Step1Content extends StatefulWidget {
  const Step1Content({super.key, required this.tabController});

  final TabController tabController;

  @override
  State<Step1Content> createState() => _Step1ContentState();
}

class _Step1ContentState extends State<Step1Content> {
  bool? nameLength;
  bool? passwordLength;

  bool onNameChange = false;
  bool onPassChange = false;

  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ERP Login ID',
            style:
                TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 400,
            height: 70,
            child: TextField(
              autofocus: true,
              focusNode: nodeOne,
              onSubmitted: (_) {
                FocusScope.of(context).requestFocus(nodeTwo);
              },
              onChanged: (value) {
                if (value.length <= 7) {
                  setState(() {
                    nameLength = true;
                    onNameChange = false;
                  });
                } else if (value.length > 7) {
                  setState(() {
                    onNameChange = true;
                    nameLength = false;
                  });
                }
              },
              decoration: InputDecoration(
                errorText: nameLength == true
                    ? 'Please enter name atleast of 7 characters'
                    : null,
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'ERP Password',
            style:
                TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 400,
            height: 70,
            child: TextField(
              focusNode: nodeTwo,
              onChanged: (value) {
                if (value.length <= 7) {
                  setState(() {
                    passwordLength = true;
                    onPassChange = false;
                  });
                } else if (value.length > 7) {
                  setState(() {
                    onPassChange = true;
                    passwordLength = false;
                  });
                }
              },
              decoration: InputDecoration(
                errorText: passwordLength == true
                    ? 'Please enter password atleast of 7 characters'
                    : null,
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: (onNameChange && onPassChange) == true
                    ? Colors.blue[900]
                    : Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                if ((onNameChange && onPassChange) == true) {
                  widget.tabController.animateTo(1);
                } else {
                  null;
                }
              },
              child: const Text(
                'LOG IN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Step2Content extends StatelessWidget {
  const Step2Content({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ERP DB Name',
            style:
                TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 400,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter DB Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'ERP Points',
            style:
                TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 400,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'ERP End Points',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 150,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                tabController.animateTo(2);
              },
              child: const Text(
                'Verify Details',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Step3Content extends StatelessWidget {
  const Step3Content({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        SizedBox(height: 100, child: Text('Image of computer')),
        Text(
          'Importing Data...',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text('You can your customers once we import the data.'),
        SizedBox(height: 30),
        Divider(
          color: Colors.grey,
        ),
        SizedBox(height: 40),
        Text('Start adding your team members'),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: Colors.deepPurple,
              onPressed: () {},
              icon: Icon(
                Icons.add_box_rounded,
                size: 40,
              ),
            ),
            SizedBox(width: 20),
            Text(
              'Add Member',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    );
  }
}

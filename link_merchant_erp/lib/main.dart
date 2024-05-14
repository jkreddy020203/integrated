import 'package:flutter/material.dart';
import 'package:link_merchant_erp/custom_drawer_button.dart';
import 'package:link_merchant_erp/merchant.dart';
import 'package:link_merchant_erp/themes/app_strings.dart';
import 'package:link_merchant_erp/themes/iconsax.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;
  int selectedNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Row(
        children: [
          Drawer(
            backgroundColor: Theme.of(context).colorScheme.background,
            child: Container(
              color: Theme.of(context).colorScheme.background,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 20,
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: const Text('Nike Logos'),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: NavigationRail(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      selectedIndex: selectedNavIndex,
                      groupAlignment: groupAlignment,
                      useIndicator: false,
                      labelType: labelType,
                      leading: showLeading
                          ? FloatingActionButton(
                              elevation: 0,
                              onPressed: () {},
                              child: const Icon(Icons.add),
                            )
                          : const SizedBox(),
                      trailing: showTrailing
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz_rounded),
                            )
                          : const SizedBox(),
                      destinations: const <NavigationRailDestination>[
                        NavigationRailDestination(
                          icon: CustomDrawerButton(
                            title: AppStrings.manageMerchant,
                            iconPath: Iconsax.people5,
                            isSelected: false,
                          ),
                          selectedIcon: CustomDrawerButton(
                            title: AppStrings.manageCustomer,
                            iconPath: Iconsax.people5,
                            isSelected: true,
                          ),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          indicatorShape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          icon: CustomDrawerButton(
                            title: AppStrings.addMerchantDrawer,
                            iconPath: Iconsax.user_cirlce_add,
                            isSelected: false,
                          ),
                          selectedIcon: CustomDrawerButton(
                            title: AppStrings.addCustomerDrawer,
                            iconPath: Iconsax.user_cirlce_add,
                            isSelected: true,
                          ),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: CustomDrawerButton(
                            title: AppStrings.myTeam,
                            iconPath: Iconsax.user_octagon,
                            isSelected: false,
                          ),
                          selectedIcon: CustomDrawerButton(
                            title: AppStrings.myTeam,
                            iconPath: Iconsax.user_octagon,
                            isSelected: true,
                          ),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: CustomDrawerButton(
                            title: AppStrings.accountSettings,
                            iconPath: Icons.settings_outlined,
                            isSelected: false,
                          ),
                          selectedIcon: CustomDrawerButton(
                            title: AppStrings.accountSettings,
                            iconPath: Icons.settings_outlined,
                            isSelected: true,
                          ),
                          label: Text(''),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Merchant(),
          ),
        ],
      ),
    );
  }
}

import 'package:link_merchant_erp/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:link_merchant_erp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

AppBar buildAppBar(BuildContext context) {
  final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
  return AppBar(
    // centerTitle: false,
    // backgroundColor: Theme.of(context).colorScheme.background,
    title: const Text(
      'Linking to Merchant ERP',
      // style: AppTextStyles.textStyleDashboardTitle(context),
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Switch(
        value: themeChange.darkTheme,
        activeColor: AppColors.kBlack,
        inactiveTrackColor: AppColors.kWhite,
        thumbColor: MaterialStateProperty.all(
            themeChange.darkTheme ? AppColors.kBlack : AppColors.kGreen),
        onChanged: (value) {
          themeChange.darkTheme = value;
        },
      ),
      Container(
        width: 100,
        height: 40,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: AppColors.kRed,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Notification',
            style: TextStyle(
              color:
                  themeChange.darkTheme ? AppColors.kWhite : AppColors.kBlack,
            ),
          ),
        ),
      ),
      IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: () {},
      ),
    ],
    shape: Border(
      bottom: BorderSide(
        color: AppColors.kBlack,
        width: 1,
      ),
    ),
  );
}

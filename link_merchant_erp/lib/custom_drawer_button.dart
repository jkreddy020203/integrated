import 'package:link_merchant_erp/themes/app_colors.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:link_merchant_erp/themes/theme_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:responsive_framework/responsive_framework.dart';

class CustomDrawerButton extends StatelessWidget {
  const CustomDrawerButton({
    super.key,
    required this.title,
    required this.iconPath,
    required this.isSelected,
    this.selectedColor,
  });

  final String title;
  final IconData iconPath;
  final bool isSelected;
  final Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListTile(
        selected: isSelected,
        // selectedColor: AppColors.kYellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        leading: Icon(iconPath, size: 20, color: AppColors.kBlack),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.kBlack,
          ),
        ),
      ),
    );
  }
}

import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isSelected;
  final String title;

  const CustomButton({
    super.key,
    this.onPressed,
    this.isSelected = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppPadding.p4,
      ),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.salmon : AppColors.beige,
        borderRadius: BorderRadius.circular(AppSize.s32),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: isSelected ? AppColors.terracotta : AppColors.brownRosy,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

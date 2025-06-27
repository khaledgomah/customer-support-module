import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class CustomGoForwardButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomGoForwardButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: CircleAvatar(
        radius: AppSize.s16,
        backgroundColor: AppColors.salmon,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}

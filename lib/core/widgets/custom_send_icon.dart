import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class CustomSendIcon extends StatelessWidget {
  const CustomSendIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -45 * 3.14 / 180, // -45 degrees in radians
      child:  Icon(
        Icons.send,
        size: AppSize.s16,
        color: AppColors.salmon,
      ),
    );
  }
}

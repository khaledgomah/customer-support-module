import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  const CustomTextFeild({
    super.key,
    this.onSubmitted,
    this.controller,
    this.onChanged, this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: AppPadding.p8,
          horizontal: AppPadding.p16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s32),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s32),
          borderSide: BorderSide.none,
        ),
        fillColor: AppColors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSize.s32),
        ),
        hintText:hintText,
      ),
    );
  }
}

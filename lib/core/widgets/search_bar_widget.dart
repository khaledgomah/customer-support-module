import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onChanged;

  const SearchBarWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: AppColors.beige),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(AppSize.s4),
          child: CircleAvatar(
            backgroundColor: AppColors.salmon,
            child: Icon(Icons.tune, color: AppColors.terracotta),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        filled: true,
        fillColor: AppColors.beige,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s32),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

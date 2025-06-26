import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomerServiceView extends StatelessWidget {
  const CustomerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.customerServiceTitle)),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.customServiceWelcome,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Divider(),
            Text(
              AppStrings.lorem,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Divider(),
            ListTile(
              title: Text(AppStrings.offerHelp),
              subtitle: Text(
                AppStrings.support,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: IconButton(
                onPressed: () => Get.toNamed(AppRoutes.contactUs),
                icon: CircleAvatar(
                  radius: AppSize.s16,
                  backgroundColor: AppColors.salmon,
                  foregroundColor: AppColors.white,
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(AppStrings.helpCenter),
              subtitle: Text(AppStrings.generalInformation),
              trailing: IconButton(
                onPressed: () => Get.toNamed(AppRoutes.helpFaq),
                icon: CircleAvatar(
                  radius: AppSize.s16,
                  backgroundColor: AppColors.salmon,
                  foregroundColor: AppColors.white,
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

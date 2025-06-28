import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/core/widgets/custom_go_forward_button.dart';
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
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Divider(),
            ListTile(
              title: Text(AppStrings.offerHelp),
              subtitle: Text(
                AppStrings.support,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              trailing: CustomGoForwardButton(onPressed:() =>  Get.toNamed(AppRoutes.assistant)),
            ),
            Divider(),
            ListTile(
              title: Text(AppStrings.helpCenter),
              subtitle: Text(AppStrings.generalInformation),
              trailing: CustomGoForwardButton(onPressed:() =>  Get.toNamed(AppRoutes.helpFaq)),
            ),
          ],
        ),
      ),
    );
  }
}
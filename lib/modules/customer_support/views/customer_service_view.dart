import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/core/widgets/custom_go_forward_button.dart';
import 'package:customer_support_module/modules/customer_support/controller/customer_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerServiceView extends GetView<CustomerServiceController> {
  const CustomerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.customerServiceTitle),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppPadding.p12),
            child: IconButton(
              onPressed: () => controller.goToProfile(),
              icon: Icon(Icons.person, color: AppColors.salmon),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                trailing: CustomGoForwardButton(
                  onPressed: () => controller.goToChat(),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(AppStrings.helpCenter),
                subtitle: Text(AppStrings.generalInformation),
                trailing: CustomGoForwardButton(
                  onPressed: () => controller.goToFaq(),
                ),
              ),
              Divider(),
              ListTile(
                title: const Text(AppStrings.callCenter),
                trailing: CustomGoForwardButton(
                  onPressed: controller.showSupportOptionsDialog,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

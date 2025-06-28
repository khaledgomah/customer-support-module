import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../routes/app_routes.dart';

class CustomerServiceController extends GetxController {
  String userId = 'khaled'; // it well be dynamic and we well take it from auth
  void goToChat() {
    Get.toNamed(AppRoutes.chat, arguments: userId);
  }

  void goToFaq() {
    Get.toNamed(AppRoutes.helpFaq);
  }

  void goToProfile() {
    Get.toNamed(AppRoutes.user, arguments: userId);
  }

  void showSupportOptionsDialog() {
    Get.defaultDialog(
      title: AppStrings.offerHelp,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              backgroundColor: AppColors.beige,
              foregroundColor: AppColors.terracotta,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Get.back();
              Get.snackbar(
                AppStrings.changePassword,
                AppStrings.changePasswordResponse,
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            icon: const Icon(Icons.password),
            label: const Text(AppStrings.changePassword),
          ),
          const SizedBox(height: 12),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              backgroundColor: AppColors.beige,
              foregroundColor: AppColors.terracotta,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Get.back();
              Get.snackbar(
                AppStrings.balance,
                "${AppStrings.currentBalance} 245.75",
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            icon: const Icon(Icons.account_balance_wallet_outlined),
            label: const Text(AppStrings.balance),
          ),
          const SizedBox(height: 12),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              backgroundColor: AppColors.beige,
              foregroundColor: AppColors.terracotta,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Get.back();
              callSupport('+201062183637');
            },
            icon: const Icon(Icons.call_outlined),
            label: const Text(AppStrings.support),
          ),
          const SizedBox(height: 12),
          TextButton(onPressed: () => Get.back(), child: const Text("Cancel")),
        ],
      ),
    );
  }

  Future<void> callSupport(String phoneNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      Get.snackbar(AppStrings.error, AppStrings.callError);
    }
  }
}

import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openWhatsApp({
  required String phoneNumber, // بدون +
  String? message,
}) async {
  final String fullPhone = '2$phoneNumber';
  final Uri url = Uri.parse(
    'https://wa.me/$fullPhone${message != null ? "?text=${Uri.encodeComponent(message)}" : ""}',
  );

  if (await canLaunchUrl(url)) {
    final bool launched = await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );

    if (!launched) {
      Get.snackbar(
        'error',
        'cannot open WhatsApp',
        snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.brownRosy,
      colorText: AppColors.black,
      );
    }
  } else {
    Get.snackbar(
      'WhatsApp not installed',
      'Please install WhatsApp first',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.brownRosy,
      colorText: AppColors.black,
    );
  }
}

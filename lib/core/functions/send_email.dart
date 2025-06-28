import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

Future<void> openEmailApp(String email) async {
  final Uri emailUri = Uri(scheme: 'mailto', path: email);

  if (await canLaunchUrl(emailUri)) {
    final bool launched = await launchUrl(emailUri);
    if (!launched) {
      Get.snackbar(
        'Error',
        'Could not open email app.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.shade100,
        colorText: Colors.black,
      );
    }
  } else {
    Get.snackbar(
      'Unavailable',
      'No email client found.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange.shade100,
      colorText: Colors.black,
    );
  }
}

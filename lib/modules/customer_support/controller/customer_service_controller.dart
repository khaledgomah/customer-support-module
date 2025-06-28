import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class CustomerServiceController extends GetxController {
  final String userId = 'khaled'; // لاحقًا: خدها من auth

  void goToChat() {
    Get.toNamed(AppRoutes.chat, arguments: userId);
  }

  void goToFaq() {
    Get.toNamed(AppRoutes.helpFaq);
  }

  void goToProfile() {
    Get.toNamed(AppRoutes.user, arguments: userId);
  }
}

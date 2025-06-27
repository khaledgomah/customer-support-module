import 'package:customer_support_module/modules/customer_support/controller/help_faq_controller.dart';
import 'package:get/get.dart';

class HelpFaqBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpFaqController>(() => HelpFaqController());
  }
}

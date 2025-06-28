import 'package:customer_support_module/modules/customer_support/controller/chat_controller.dart';
import 'package:get/get.dart';

class ChatBinding extends Bindings {


  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}
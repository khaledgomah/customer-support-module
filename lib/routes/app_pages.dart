import 'package:customer_support_module/modules/customer_support/bindings/chat_binding.dart';
import 'package:customer_support_module/modules/customer_support/bindings/customer_service_binding.dart';
import 'package:customer_support_module/modules/customer_support/bindings/help_faq_binding.dart';
import 'package:customer_support_module/modules/customer_support/bindings/user_binding.dart';
import 'package:customer_support_module/modules/customer_support/views/chat_view.dart';
import 'package:customer_support_module/modules/customer_support/views/customer_service_view.dart';
import 'package:customer_support_module/modules/customer_support/views/help_faq_view.dart';
import 'package:customer_support_module/modules/customer_support/views/user_profile_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.customerService,
      page: () => const CustomerServiceView(),
      binding: CustomerServiceBinding()
    ),
    GetPage(
      name: AppRoutes.helpFaq,
      page: () => const HelpFaqView(),
      binding: HelpFaqBinding(),
    ),
        GetPage(
      name: AppRoutes.user,
      page: () => const UserProfileView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: AppRoutes.chat,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    ];
}

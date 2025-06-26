import 'package:customer_support_module/modules/customer_support/views/customer_service_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.customerService,
      page: () => const CustomerServiceView(),
      
    ),
    // GetPage(
    //   name: AppRoutes.helpFaq,
    //   page: () => const HelpFaqView(),
    //   binding: HelpFaqBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.contactUs,
    //   page: () => const ContactUsView(),
    //   binding: ContactUsBinding(),
    // ),
    ];
}

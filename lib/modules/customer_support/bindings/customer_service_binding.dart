// lib/modules/customer_service/bindings/customer_service_binding.dart

import 'package:get/get.dart';

class CustomerServiceBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<CustomerServiceApi>(() => CustomerServiceApi());

    // then inject controller and pass the service
    // Get.lazyPut<CustomerServiceController>(
    // () => CustomerServiceController(Get.find<CustomerServiceApi>()),
    // );
  }
}

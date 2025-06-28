import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/modules/customer_support/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.userProfile)),
      body: Center(
        child: Obx(() {
          controller.loadUser('khaled'); //user uniqe id get from auth
          final user = controller.user.value;
          if (controller.isLoading.value) {
            return const CircularProgressIndicator();
          }
          if (user == null) {
            return const Text(AppStrings.noUserDataAvailable);
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.imageUrl),
                radius: AppSize.s40,
              ),
              SizedBox(height: AppSize.s16),
              Text(user.name, style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: AppSize.s16),
              Text(
                user.email,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          );
        }),
      ),
    );
  }
}

import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/core/widgets/contact_us_section.dart';
import 'package:customer_support_module/core/widgets/custom_button.dart';
import 'package:customer_support_module/core/widgets/faq_section.dart';
import 'package:customer_support_module/modules/customer_support/controller/help_faq_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpFaqView extends GetView<HelpFaqController> {
  const HelpFaqView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.helpFaqTitle)),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p28),
        child: GetX<HelpFaqController>(
          builder: (HelpFaqController controller) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        isSelected: controller.isFaqSelected,
                        title: AppStrings.faq,
                        onPressed: () {
                          controller.viewFAQ();
                        },
                      ),
                    ),
                    SizedBox(width: AppSize.s16),
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
                          controller.viewContactUs();
                        },
                        isSelected: !controller.isFaqSelected,
                        title: AppStrings.contactUsTitle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSize.s16),
                controller.isFaqSelected
                    ? const FAQSection()
                    : const ContactUsSection(),
              ],
            );
          },
        ),
      ),
    );
  }
}

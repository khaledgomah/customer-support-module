import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/core/widgets/custom_button.dart';
import 'package:customer_support_module/core/widgets/faq_widget.dart';
import 'package:customer_support_module/core/widgets/search_bar_widget.dart';
import 'package:customer_support_module/data/models/faq.dart';
import 'package:customer_support_module/modules/customer_support/controller/help_faq_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetX<HelpFaqController>(
        builder: (HelpFaqController controller) {
          final faqs = controller.filteredFaqs;
          return SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        isSelected:
                            controller.selectedCategory == FAQCategory.general,
                        title: AppStrings.general,
                        onPressed: () {
                          controller.viewGeneral();
                        },
                      ),
                    ),
                    SizedBox(width: AppSize.s16),
                    Expanded(
                      child: CustomButton(
                        isSelected:
                            controller.selectedCategory == FAQCategory.account,
                        title: AppStrings.account,
                        onPressed: () {
                          controller.viewAccount();
                        },
                      ),
                    ),
                    SizedBox(width: AppSize.s16),
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
                          controller.viewServices();
                        },
                        isSelected:
                            controller.selectedCategory == FAQCategory.services,
                        title: AppStrings.services,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSize.s16),
                SearchBarWidget(onChanged: controller.onSearchChanged),
                SizedBox(height: AppSize.s16),
                if (faqs.isNotEmpty) const Divider(height: 0),
                for (int i = 0; i < faqs.length; i++) ...[
                  FAQWidget(faq: faqs[i]),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

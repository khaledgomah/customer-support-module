import 'package:customer_support_module/core/widgets/contact_us_widget.dart';
import 'package:customer_support_module/modules/customer_support/controller/help_faq_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsSection extends GetView<HelpFaqController> {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Expanded(
        child: ListView.builder(
          itemCount: controller.contacts.length,
          itemBuilder: (context, index) {
            final contact = controller.contacts[index];
            return ContactUsWidget(contact: contact);
          },
        ),
      ),
    );
  }
}

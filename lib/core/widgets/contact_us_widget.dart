import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/data/models/contact.dart';
import 'package:flutter/material.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: AppColors.black,
      leading: CircleAvatar(
        radius: AppSize.s20,
        backgroundColor: AppColors.salmon,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Image.asset(contact.icon),
        ),
      ),
      title: Text(
        contact.title,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      children: [
        Text(
          contact.description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextButton(
          onPressed: () => contact.contactAction(),
          child: Text(
            'Open Now',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.salmon),
          ),
        ),
      ],
    );
  }
}

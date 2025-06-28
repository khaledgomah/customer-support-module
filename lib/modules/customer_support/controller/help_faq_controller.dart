import 'package:customer_support_module/core/constants/app_assets.dart';
import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/functions/send_email.dart';
import 'package:customer_support_module/core/functions/send_whatsapp.dart';
import 'package:customer_support_module/data/models/contact.dart';
import 'package:customer_support_module/data/models/faq.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpFaqController extends GetxController {
  final _searchQuery = ''.obs;
  final _selectedCategory = FAQCategory.general.obs;
  final _isFaqSelected = true.obs;

  // Sample FAQs
  final faqs =
      <FAQ>[
        FAQ(
          question: AppStrings.resetPassword,
          answer: AppStrings.lorem,
          category: FAQCategory.account,
        ),
        FAQ(
          question: AppStrings.loremShort,
          answer: AppStrings.lorem,
          category: FAQCategory.account,
        ),
        FAQ(
          question: AppStrings.loremShort,
          answer: AppStrings.lorem,
          category: FAQCategory.general,
        ),
        FAQ(
          question: AppStrings.loremShort,
          answer: AppStrings.lorem,
          category: FAQCategory.general,
        ),
        FAQ(
          question: AppStrings.loremShort,
          answer: AppStrings.lorem,
          category: FAQCategory.general,
        ),
        FAQ(
          question: AppStrings.loremShort,
          answer: AppStrings.lorem,
          category: FAQCategory.general,
        ),
        FAQ(
          question: AppStrings.loremShort,
          answer: AppStrings.lorem,
          category: FAQCategory.general,
        ),
      ].obs;

  //Contact List
  final List<Contact> contacts = [
    Contact(
      title: AppStrings.customServiceTitle,
      description: AppStrings.customServiceDescription,
      contactAction: () async {
        await openEmailApp(AppStrings.customServiceEmail);
      },
      icon: AppAssets.customerService,
    ),
    Contact(
      title: AppStrings.website,
      description: AppStrings.websiteDescription,
      contactAction: () async {
        await launchUrl(Uri.parse(AppStrings.websiteUrl));
      },
      icon: AppAssets.website,
    ),
    Contact(
      title: AppStrings.facebook,
      description: AppStrings.facebookDescription,
      contactAction: () async {
        await launchUrl(Uri.parse(AppStrings.facebookUrl));
      },
      icon: AppAssets.facebook,
    ),
    Contact(
      title: AppStrings.whatsapp,
      description: AppStrings.whatsappDescription,
      contactAction: () => openWhatsApp(phoneNumber: AppStrings.whatsappPhone),
      icon: AppAssets.whatsapp,
    ),
    Contact(
      title: AppStrings.instagram,
      description: AppStrings.instagramDescription,
      contactAction: () async {
        await launchUrl(Uri.parse(AppStrings.instagramUrl));
      },
      icon: AppAssets.instagram,
    ),
  ];

  //toggle between FAQ and Contact Us view
  void viewFAQ() => _isFaqSelected.value = true;

  void viewContactUs() => _isFaqSelected.value = false;

  bool get isFaqSelected => _isFaqSelected.value;

  //change the selected category
  void viewGeneral() => _selectedCategory.value = FAQCategory.general;

  void viewServices() => _selectedCategory.value = FAQCategory.services;

  void viewAccount() => _selectedCategory.value = FAQCategory.account;

  FAQCategory get selectedCategory => _selectedCategory.value;

  //get the filtered FAQs based on search query and selected category
  List<FAQ> get filteredFaqs {
    return faqs.where((faq) {
      final bool matchesSearch = faq.question.toLowerCase().contains(
        _searchQuery.value.toLowerCase(),
      );
      final bool matchesCategory = faq.category == _selectedCategory.value;
      return matchesSearch && matchesCategory;
    }).toList();
  }

  //set the search query
  void onSearchChanged(String value) {
    _searchQuery.value = value;
  }
}

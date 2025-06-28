import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/core/widgets/custom_go_forward_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/faq.dart';

class FAQWidget extends StatelessWidget {
  final FAQ faq;
  FAQWidget({super.key, required this.faq});

  final RxBool _isExpanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () => _isExpanded.toggle(),
            contentPadding: EdgeInsets.zero,
            title: Text(
              faq.question,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(color: AppColors.salmon),
            ),
            trailing:
                _isExpanded.value
                    ? IconButton(
                      icon: Icon(
                        Icons.expand_more_outlined,
                        size: AppSize.s32,
                        color: AppColors.black,
                      ),
                      onPressed: () => _isExpanded.toggle(),
                    )
                    : RotatedBox(
                      quarterTurns: 1,
                      child: CustomGoForwardButton(
                        onPressed: () => _isExpanded.toggle(),
                      ),
                    ),
          ),
          const Divider(height: 0),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child:
                _isExpanded.value
                    ? TweenAnimationBuilder<Offset>(
                      duration: const Duration(milliseconds: 300),
                      tween: Tween(
                        begin: const Offset(0, -0.1),
                        end: Offset.zero,
                      ),
                      curve: Curves.easeOut,
                      builder: (context, offset, child) {
                        return Transform.translate(
                          offset: offset,
                          child: child,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppPadding.p8,
                          vertical: AppPadding.p4,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: AppPadding.p12,
                              ),
                              child: Text(
                                faq.answer,
                                style: Theme.of(context).textTheme.bodySmall,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    : const SizedBox.shrink(),
          ),
          _isExpanded.value ? Divider() : SizedBox(),
        ],
      );
    });
  }
}

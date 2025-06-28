import 'package:customer_support_module/core/constants/app_assets.dart';
import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/core/widgets/custom_send_icon.dart';
import 'package:customer_support_module/core/widgets/custom_text_feild.dart';
import 'package:customer_support_module/core/widgets/message_widget.dart';
import 'package:customer_support_module/modules/customer_support/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              child: Image.asset(
                AppAssets.customerService,
                color: AppColors.salmon,
              ),
            ),
            const Text(AppStrings.assistant),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(AppStrings.chatWelcome),
          Divider(endIndent: AppSize.s20, indent: AppSize.s20),
          Expanded(
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: ListView.builder(
                  reverse: true,
                  itemCount: controller.messages.length,
                  itemBuilder: (_, index) {
                    final msg = controller.messages[index];
                    final isMe = msg.senderId == controller.userId;
                    return isMe
                        ? SendBubble(message: msg)
                        : RecieveBubble(message: msg);
                  },
                ),
              ),
            ),
          ),
          Container(
            height: AppSize.s100,
            decoration: BoxDecoration(
              color: AppColors.beige,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSize.s32),
                topRight: Radius.circular(AppSize.s32),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextFeild(
                        onSubmitted: (value) {
                          controller.sendMessage(controller.userId);
                        },
                        controller: controller.textController,
                        onChanged: (val) => controller.messageText.value = val,
                      ),
                    ),
                    SizedBox(width: AppSize.s8),
                    CircleAvatar(
                      radius: AppSize.s16,
                      backgroundColor: AppColors.white,
                      child: IconButton(
                        onPressed: () {
                          controller.sendMessage(controller.userId);
                        },
                        icon: CustomSendIcon(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

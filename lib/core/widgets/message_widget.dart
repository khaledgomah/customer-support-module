import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:customer_support_module/data/models/chat_message.dart';
import 'package:flutter/material.dart';

class SendBubble extends StatelessWidget {
  final ChatMessage message;
  const SendBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(AppPadding.p16),
          margin: EdgeInsets.only(left: AppMargin.m36),
          decoration: BoxDecoration(
            color: AppColors.beige,
            borderRadius: BorderRadius.circular(AppSize.s32),
          ),
          child: Column(
            children: [
              Text(message.text, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
        SizedBox(height: AppSize.s8),
        Text('${message.timestamp.hour}:${message.timestamp.minute}'),
        SizedBox(height: AppSize.s8),
      ],
    );
  }
}

class RecieveBubble extends StatelessWidget {
  final ChatMessage message;
  const RecieveBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(AppPadding.p16),
          margin: EdgeInsets.only(right: AppMargin.m36),
          decoration: BoxDecoration(
            color: AppColors.salmon,
            borderRadius: BorderRadius.circular(AppSize.s32),
          ),
          child: Column(
            children: [
              Text(message.text, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
        Text('${message.timestamp.hour}:${message.timestamp.minute}'),
      ],
    );
  }
}

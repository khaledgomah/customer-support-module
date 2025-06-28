import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_support_module/core/constants/app_constants.dart';
import 'package:customer_support_module/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/chat_message.dart';

class ChatController extends GetxController {
  late final String userId;
  late final TextEditingController textController;

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    userId = Get.arguments as String;
    _listenToMessages();
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }

  final messages = <ChatMessage>[].obs;
  final messageText = ''.obs;

  CollectionReference<Map<String, dynamic>> get _messagesRef =>
      FirebaseFirestore.instance
          .collection(AppConstants.chatsCollection)
          .doc(userId)
          .collection(AppConstants.messagesCollection);

  void sendMessage(String senderId) async {
    if (messageText.value.trim().isEmpty) return;

    final message = ChatMessage(
      senderId: senderId,
      text: messageText.value.trim(),
      timestamp: DateTime.now(),
    );

    try {
      textController.clear();
      await _messagesRef.add(message.toMap());
      messageText.value = '';
      Get.focusScope?.unfocus();
    } catch (e) {
      Get.snackbar(AppStrings.error, AppStrings.sendMessageError);
    }
  }

  void _listenToMessages() {
    try {
      _messagesRef
          .orderBy('timestamp', descending: true)
          .snapshots()
          .listen(
            (snapshot) {
              messages.value =
                  snapshot.docs
                      .map((doc) => ChatMessage.fromMap(doc.data()))
                      .toList();
            },
            onError: (error) {
              Get.snackbar(AppStrings.error, AppStrings.loadingMessageError);
            },
          );
    } catch (e) {
      Get.snackbar(AppStrings.error, AppStrings.loadingMessageError);
    }
  }
}

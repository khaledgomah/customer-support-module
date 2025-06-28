import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_support_module/core/constants/app_constants.dart';
import 'package:customer_support_module/data/models/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {

    late final String userId;

  @override
  void onInit() {
    userId = Get.arguments as String;
    super.onInit();
  }
  final _collection = FirebaseFirestore.instance.collection(AppConstants.userCollection);
  final isLoading = true.obs;

  final Rxn<UserModel> user = Rxn<UserModel>();

  Future<void> loadUser() async {
    final doc = await _collection.doc(userId).get();
    if (doc.exists) {
      user.value = UserModel.fromMap(doc.data()!, doc.id);
    }
    isLoading.value = false;
  }
}

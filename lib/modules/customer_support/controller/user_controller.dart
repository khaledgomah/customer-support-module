import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_support_module/core/constants/app_constants.dart';
import 'package:customer_support_module/data/models/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final _collection = FirebaseFirestore.instance.collection(AppConstants.userCollection);
  final isLoading = true.obs;

  final Rxn<UserModel> user = Rxn<UserModel>();

  Future<void> loadUser(String uid) async {
    final doc = await _collection.doc(uid).get();
    if (doc.exists) {
      user.value = UserModel.fromMap(doc.data()!, doc.id);
    }
    isLoading.value = false;
  }
}

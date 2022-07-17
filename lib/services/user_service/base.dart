import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../firestore_service.dart';
import '/models/user.dart';

class FirestoreUserService extends BaseFirestoreService<UserModel> {
  Future<void> update(UserModel user) async {
    return collection.doc(user.username).update(user.toJson());
  }

  @override
  CollectionReference<Object?> get pCollectionBaseRef =>
      FirebaseFirestore.instance.collection("users");

  @override
  UserModel fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return UserModel.fromJson(doc);
  }

  @override
  Map<String, Object?> toFirestore(UserModel? value) {
    return value!.toJson();
  }

  static CollectionReference<UserModel> get collectionRef =>
      FirestoreUserService().collection;
}

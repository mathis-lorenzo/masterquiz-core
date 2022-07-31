import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/friends.dart';
import '../firestore_service.dart';

class FirestoreFriendsService extends BaseFirestoreService<FriendModel> {
  Future<void> update(FriendModel user) async {
    // return collection.doc(user.username).update(user.toJson());
  }

  @override
  CollectionReference<Object?> get pCollectionBaseRef =>
      FirebaseFirestore.instance.collection("friends");

  @override
  FriendModel fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return FriendModel.fromDoc(doc);
  }

  @override
  Map<String, Object?> toFirestore(FriendModel? value) {
    return value!.toJson();
  }

  static CollectionReference<FriendModel> get collectionRef =>
      FirestoreFriendsService().collection;
}

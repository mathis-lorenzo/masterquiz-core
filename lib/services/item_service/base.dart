import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/item.dart';
import '../firestore_service.dart';

class FirestoreItemService extends BaseFirestoreService<ItemModel> {
  Future<void> update(ItemModel user) async {
    // return collection.doc(user.username).update(user.toJson());
  }

  @override
  CollectionReference<Object?> get pCollectionBaseRef =>
      FirebaseFirestore.instance.collection("items");

  @override
  ItemModel fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return ItemModel.fromJson(doc);
  }

  @override
  Map<String, Object?> toFirestore(ItemModel? value) {
    return value!.toJson();
  }

  static CollectionReference<ItemModel> get collectionRef =>
      FirestoreItemService().collection;
}

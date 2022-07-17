import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseFirestoreService<T> {
  CollectionReference get pCollectionBaseRef;

  CollectionReference<T> get collection => pCollectionBaseRef.withConverter<T>(
      fromFirestore: (doc, options) => fromFirestore(doc),
      toFirestore: (model, options) => toFirestore(model));

  Map<String, Object?> toFirestore(T? value);

  T fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc);

  //Utility functions
  Future<T?> getUnique(String id) async =>
      (await collection.doc(id).get()).data();
}

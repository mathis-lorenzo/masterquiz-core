
import 'package:cloud_firestore/cloud_firestore.dart';

enum FriendState {
  pending,
  accepted 
}

class FriendModel {
  FriendModel({
    this.id = "",
    required this.first,
    required this.second,
    this.lastGift,
    this.lastDuel
  });

  FriendModel.fromDoc(DocumentSnapshot doc) {
    dynamic json = doc.data()!;
    id = doc.id;
    first = json['first'];
    second = json['second'];
    state = FriendState.values.elementAt(json['state']);
    lastGift = (json['lastGift']as Timestamp?)?.toDate();
    lastDuel = (json['lastDuel']as Timestamp?)?.toDate();
  }

  late String id;
  late String first;
  late String second;
  late FriendState state;
  late DateTime? lastGift;
  late DateTime? lastDuel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first'] = first;
    map['second'] = second;
    map['state'] = state.index;
    map['lastGift'] = lastGift;
    map['lastDuel'] = lastDuel;
    return map;
  }
}

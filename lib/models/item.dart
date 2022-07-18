import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/models/enums.dart';

enum CostType {
  points,
  money
}

class ItemModel {
  ItemModel({
    required this.path,
    required this.link,
    required this.type,
    required this.limited,
    this.start,
    this.end,
    required this.costType,
    required this.price
  });

  ItemModel.fromJson(dynamic json) {
    path = json['path'];
    link = json['link'];
    type = ItemType.values.elementAt(json['type']);
    limited = json['limited'];
    start = (json['start']as Timestamp?)?.toDate();
    end = (json['end']as Timestamp?)?.toDate();
    costType = CostType.values.elementAt(json['costType']);
    price = json['price'];
    gender = Gender.values.elementAt(json['gender']);
  }

  late String path;
  late String link;
  late ItemType type;
  late bool limited;
  late DateTime? start;
  late DateTime? end;
  late CostType costType;
  late int price;
  late Gender? gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['link'] = link;
    map['type'] = type.index;
    map['limited'] = limited;
    map['start'] = start;
    map['end'] = end;
    map['price'] = price;
    map['costType'] = costType.index;
    map['gender'] = gender?.index;
    return map;
  }
}
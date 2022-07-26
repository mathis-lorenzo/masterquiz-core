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
    this.limited,
    this.start,
    this.end,
    this.costType,
    this.price,
    this.gender,
    this.defaultItem = false
  });

  ItemModel.fromJson(dynamic json) {
    path = json['path'];
    link = json['link'];
    type = ItemType.values.elementAt(json['type']);
    limited = json['limited'];
    start = (json['start']as Timestamp?)?.toDate();
    end = (json['end']as Timestamp?)?.toDate();
    costType = json['costType'] != null ? CostType.values.elementAt(json['costType']) : null;
    price = json['price'];
    gender = json['gender'] != null ? Gender.values.elementAt(json['gender']) : null;
    defaultItem = json['defaultItem'];
  }

  late String path;
  late String link;
  late ItemType type;
  late bool defaultItem;
  late bool? limited;
  late DateTime? start;
  late DateTime? end;
  late CostType? costType;
  late double? price;
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
    map['costType'] = costType?.index;
    map['gender'] = gender?.index;
    map['defaultItem'] = defaultItem; 
    return map;
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/models/enums.dart';

enum CostType {
  points,
  money
}

class SubItemModel {
  SubItemModel({
    required this.path,
    required this.link,
  });

  SubItemModel.fromJson(dynamic json) {
    path = json['path'];
    link = json['link'];
  }

  late String path;
  late String link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['link'] = link;
    return map;
  }
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
    defaultItem = json['defaultItem'] ?? false;
    subItems = [];
    if (json['other_colors'] != null) {
      List<dynamic> others = json['other_colors'];
      for (int i = 0; i < others.length; i++) {
        subItems.add(SubItemModel.fromJson(others[i]));
      }
    }
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
  late List<SubItemModel> subItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    final List<Map<String, dynamic>> other = [];
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
    for (int i = 0; i < subItems.length; i++) {
      other.add(subItems[i].toJson());
    }
    map['other_colors'] = other;
    return map;
  }
}
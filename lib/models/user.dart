import 'item.dart';

class UserModel {
  UserModel({
    this.username,
    this.points = 0,
    this.userItems,
  });

  UserModel.fromJson(dynamic json) {
    username = json['username'];
    points = json['points'];
    userItems = json['userItems'] != null ? UserItems.fromJson(json['userItems']) : null;
  }

  late String? username;
  late int points;
  late UserItems? userItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['points'] = points;
    map['userItems'] = userItems?.toJson();
    return map;
  }
}

class UserItems {
  UserItems({
    this.background,
    this.face,
    this.makeup,
    this.mouth,
    this.nose,
    this.shirt,
    this.ears,
    this.eyes,
    this.eyebrows,
    this.hair,
    this.circle,
  });

  UserItems.fromJson(dynamic json) {
    background = json['background'] != null ? ItemModel.fromJson(json['background']) : null;
    face = json['face'] != null ? ItemModel.fromJson(json['face']) : null;
    makeup = json['makeup'] != null ? ItemModel.fromJson(json['makeup']) : null;
    mouth = json['mouth'] != null ? ItemModel.fromJson(json['mouth']) : null;
    nose = json['nose'] != null ? ItemModel.fromJson(json['nose']) : null;
    shirt = json['shirt'] != null ? ItemModel.fromJson(json['shirt']) : null;
    ears = json['ears'] != null ? ItemModel.fromJson(json['ears']) : null;
    eyes = json['eyes'] != null ? ItemModel.fromJson(json['eyes']) : null;
    eyebrows = json['eyebrows'] != null ? ItemModel.fromJson(json['eyebrows']) : null;
    hair = json['hair'] != null ? ItemModel.fromJson(json['hair']) : null;
    circle = json['circle'] != null ? ItemModel.fromJson(json['circle']) : null;
  }

  late ItemModel? background;
  late ItemModel? face;
  late ItemModel? makeup;
  late ItemModel? mouth;
  late ItemModel? nose;
  late ItemModel? shirt;
  late ItemModel? ears;
  late ItemModel? eyes;
  late ItemModel? eyebrows;
  late ItemModel? hair;
  late ItemModel? circle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['background'] = background?.toJson();
    map['face'] = face?.toJson();
    map['makeup'] = makeup?.toJson();
    map['mouth'] = mouth?.toJson();
    map['nose'] = nose?.toJson();
    map['shirt'] = shirt?.toJson();
    map['ears'] = ears?.toJson();
    map['eyes'] = eyes?.toJson();
    map['eyebrows'] = eyebrows?.toJson();
    map['hair'] = hair?.toJson();
    map['circle'] = circle?.toJson();
    return map;
  }
}
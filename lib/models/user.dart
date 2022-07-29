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
    this.backgroundColor = -1,
    this.faceColor = -1,
    this.makeupColor = -1,
    this.mouthColor = -1,
    this.shirtColor = -1,
    this.earsColor = -1,
    this.eyesColor = -1,
    this.eyebrowsColor = -1,
    this.hairColor = -1,
    this.circleColor = -1,
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
    backgroundColor = json['background_color'] ?? -1;
    faceColor = json['face_color'] ?? -1;
    makeupColor = json['makeup_color'] ?? -1;
    mouthColor = json['mouth_color'] ?? -1;
    shirtColor = json['shirt_color'] ?? -1;
    earsColor = json['ears_color'] ?? -1;
    eyesColor = json['eyes_color'] ?? -1;
    eyebrowsColor = json['eyebrows_color'] ?? -1;
    hairColor = json['hair_color'] ?? -1;
    circleColor = json['circle_color'] ?? -1;
  }

  UserItems.fromObject(UserItems obj) {
    background = obj.background;
    face = obj.face;
    makeup = obj.makeup;
    mouth = obj.mouth;
    nose = obj.nose;
    shirt = obj.shirt;
    ears = obj.ears;
    eyes = obj.eyes;
    eyebrows = obj.eyebrows;
    hair = obj.hair;
    circle = obj.circle;
    backgroundColor = obj.backgroundColor;
    faceColor = obj.faceColor;
    makeupColor = obj.makeupColor;
    mouthColor = obj.mouthColor;
    shirtColor = obj.shirtColor;
    earsColor = obj.earsColor;
    eyesColor = obj.eyesColor;
    eyebrowsColor = obj.eyebrowsColor;
    hairColor = obj.hairColor;
    circleColor = obj.circleColor;
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
  late int backgroundColor;
  late int faceColor;
  late int makeupColor;
  late int mouthColor;
  late int shirtColor;
  late int earsColor;
  late int eyesColor;
  late int eyebrowsColor;
  late int hairColor;
  late int circleColor;

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
    map['background_color'] = backgroundColor;
    map['face_color'] = faceColor;
    map['makeup_color'] = makeupColor;
    map['mouth_color'] = mouthColor;
    map['shirt_color'] = shirtColor;
    map['ears_color'] = earsColor;
    map['eyes_color'] = eyesColor;
    map['eyebrows_color'] = eyebrowsColor;
    map['hair_color'] = hairColor;
    map['circle_color'] = circleColor;
    return map;
  }
}
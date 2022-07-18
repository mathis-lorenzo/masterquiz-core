import 'package:core/models/enums.dart';

class UserModel {
  UserModel({
    this.username,
    this.points = 0,
  });

  UserModel.fromJson(dynamic json) {
    username = json['username'];
    points = json['points'];
  }

  late String? username;
  late int points;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['points'] = points;
    return map;
  }
}
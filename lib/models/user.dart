import 'package:core/models/enums.dart';

class UserModel {
  UserModel({
    this.username,
    this.points = 0,
    required this.signupType
  });

  UserModel.fromJson(dynamic json) {
    username = json['username'];
    points = json['points'];
    signupType = SignupType.values.elementAt(json['signupType']);
  }

  late String? username;
  late int points;
  late SignupType signupType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['points'] = points;
    map['signupType'] = signupType.index;
    return map;
  }
}
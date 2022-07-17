import 'package:core/models/enums.dart';

class UserModel {
  UserModel({
    required this.username,
  });

  UserModel.fromJson(dynamic json) {
    username = json['username'];
  }

  late String username;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }
}
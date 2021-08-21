import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  int? id;
  String? firstName;
  String? lastName;
  String? avatar;

  User({this.id, this.firstName, this.lastName, this.avatar});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'],
        firstName: object['first_name'],
        lastName: object['last_name'],
        avatar: object['avatar']);
  }

  static Future<User> getUserFromApi(int id) async {
    String url = 'https://reqres.in/api/users/$id';

    var apiResult = await http.get(Uri.parse(url));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}

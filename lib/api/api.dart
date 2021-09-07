import 'dart:convert';

import 'package:navabar_demo/models/usermodels.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<UserDataModels>> getData() async {
    try {
      var response =
          await http.get("https://jsonplaceholder.typicode.com/todos");
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        List<UserDataModels> _userData = [];
        _userData =
            (result as List).map((e) => UserDataModels.fromJson(e)).toList();
        return _userData;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}

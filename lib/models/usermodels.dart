import 'dart:convert';

List<UserDataModels> userDataModelsFromJson(String str) =>
    List<UserDataModels>.from(
        json.decode(str).map((x) => UserDataModels.fromJson(x)));

class UserDataModels {
  UserDataModels({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory UserDataModels.fromJson(Map<String, dynamic> json) => UserDataModels(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );
}

import 'dart:convert';

User userModelFromJson(String str) => User.fromJson(json.decode(str));

String userModelToJson(User data) => json.encode(data.toJson());

class User {
  int? id;
  String? title;
  String? image;
  String? rent;

  User({this.id, this.title, this.image, this.rent});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    rent = json['rent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['rent'] = this.rent;
    return data;
  }
}

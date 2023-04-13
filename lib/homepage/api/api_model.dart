// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

String apiModelToJson(ApiModel data) => json.encode(data.toJson());

class ApiModel {
  ApiModel({
    this.jwt,
    this.user,
  });

  String? jwt;
  User? user;

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
    jwt: json["jwt"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "jwt": jwt,
    "user": user?.toJson(),
  };
}

class User {
  User({
    this.id,
    this.username,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.requestedUserRole,
    this.mobile,
    this.mobileNumberVerified,
    this.firstName,
    this.lastName,
    this.createdAt,
    this.updatedAt,
    this.deactivated,
    this.bio,
  });

  int? id;
  String? username;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? requestedUserRole;
  String? mobile;
  bool? mobileNumberVerified;
  String? firstName;
  String? lastName;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deactivated;
  dynamic bio;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    username: json["username"],
    email: json["email"],
    provider: json["provider"],
    confirmed: json["confirmed"],
    blocked: json["blocked"],
    requestedUserRole: json["requested_user_role"],
    mobile: json["mobile"],
    mobileNumberVerified: json["mobile_number_verified"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    deactivated: json["deactivated"],
    bio: json["bio"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "email": email,
    "provider": provider,
    "confirmed": confirmed,
    "blocked": blocked,
    "requested_user_role": requestedUserRole,
    "mobile": mobile,
    "mobile_number_verified": mobileNumberVerified,
    "first_name": firstName,
    "last_name": lastName,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "deactivated": deactivated,
    "bio": bio,
  };
}

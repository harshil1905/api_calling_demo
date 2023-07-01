// To parse this JSON data, do
//
//     final postReq = postReqFromJson(jsonString);

import 'dart:convert';

String postReqToJson(PostReq data) => json.encode(data.toJson());

class PostReq {
  String title;
  String body;
  int userId;

  PostReq({
    required this.title,
    required this.body,
    required this.userId,
  });

  Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
        "userId": userId,
      };
}

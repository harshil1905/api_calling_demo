// To parse this JSON data, do
//
//     final postResp = postRespFromJson(jsonString);

import 'dart:convert';

PostResp postRespFromJson(String str) => PostResp.fromJson(json.decode(str));

class PostResp {
  int id;

  PostResp({
    required this.id,
  });

  factory PostResp.fromJson(Map<String, dynamic> json) => PostResp(
        id: json["id"],
      );
}

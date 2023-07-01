// To parse this JSON data, do
//
//     final feedResp = feedRespFromJson(jsonString);

import 'dart:convert';

FeedResp feedRespFromJson(String str) => FeedResp.fromJson(json.decode(str));

class FeedResp {
  int id;

  FeedResp({
    required this.id,
  });

  factory FeedResp.fromJson(Map<String, dynamic> json) => FeedResp(
        id: json["id"],
      );
}

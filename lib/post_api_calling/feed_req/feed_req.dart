// To parse this JSON data, do
//
//     final feedReq = feedReqFromJson(jsonString);

import 'dart:convert';


String feedReqToJson(FeedReq data) => json.encode(data.toJson());

class FeedReq {
  String title;
  String body;
  int userId;

  FeedReq({
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

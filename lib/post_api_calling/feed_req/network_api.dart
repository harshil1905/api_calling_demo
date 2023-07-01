import 'package:api_calling_demo/post_api_calling/feed_req/feed_req.dart';
import 'package:api_calling_demo/post_api_calling/feed_req/feed_resp_model.dart';
import 'package:http/http.dart' as http;

class NetworkApiS {
  static Future<FeedResp> sendFeedData(FeedReq feedReq) async {
    final response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        body: feedReqToJson(feedReq));
    if (response.statusCode == 201) {
      return feedRespFromJson(response.body);
    } else {
      throw Exception('sam error occurde');
    }
  }
}

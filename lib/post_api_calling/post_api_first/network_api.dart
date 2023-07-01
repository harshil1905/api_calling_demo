import 'package:api_calling_demo/post_api_calling/post_api_first/post_model.dart';
import 'package:api_calling_demo/post_api_calling/post_api_first/post_response.dart';
import 'package:http/http.dart' as http;

class NetworkApi {
  static Future<PostResp> sentData(PostReq postReq) async {
    final reasponse = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      body: postReqToJson(postReq),
    );
    if (reasponse.statusCode == 201) {
      return postRespFromJson(reasponse.body);
    } else {
      throw Exception('Some Errorr Occured');
    }
  }
}

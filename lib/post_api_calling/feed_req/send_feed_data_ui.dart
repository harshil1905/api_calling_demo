import 'package:api_calling_demo/post_api_calling/feed_req/feed_req.dart';
import 'package:api_calling_demo/post_api_calling/feed_req/feed_resp_model.dart';
import 'package:api_calling_demo/post_api_calling/feed_req/network_api.dart';
import 'package:flutter/material.dart';

class SendFeedDataUI extends StatefulWidget {
  const SendFeedDataUI({super.key});

  @override
  State<SendFeedDataUI> createState() => _SendFeedDataUIState();
}

class _SendFeedDataUIState extends State<SendFeedDataUI> {
  FeedResp? feedResp;
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  TextEditingController useridController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: titleController,
          ),
          TextField(
            controller: bodyController,
          ),
          TextField(
            controller: useridController,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              FeedReq obj = FeedReq(
                  title: titleController.text,
                  body: bodyController.text,
                  userId: int.parse(useridController.text));
              feedResp = await NetworkApiS.sendFeedData(obj);
              setState(() {});
            },
            child: const Text('Submit'),
          ),
          if (feedResp != null) Text(feedResp!.id.toString())
        ],
      ),
    );
  }
}

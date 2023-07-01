import 'package:api_calling_demo/post_api_calling/post_api_first/network_api.dart';
import 'package:api_calling_demo/post_api_calling/post_api_first/post_model.dart';
import 'package:api_calling_demo/post_api_calling/post_api_first/post_response.dart';
import 'package:flutter/material.dart';

class PostApiUi extends StatefulWidget {
  const PostApiUi({super.key});

  @override
  State<PostApiUi> createState() => _PostApiUiState();
}

class _PostApiUiState extends State<PostApiUi> {
  TextEditingController txtTitlecontroller = TextEditingController();
  TextEditingController txtBodycontroller = TextEditingController();
  TextEditingController txtIdcontroller = TextEditingController();
  PostResp? resp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: txtTitlecontroller,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            TextField(
              controller: txtBodycontroller,
              decoration: const InputDecoration(hintText: 'Body'),
            ),
            TextField(
              controller: txtIdcontroller,
              decoration: const InputDecoration(hintText: 'Id'),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              color: Colors.amber.shade100,
              onPressed: () async {
                PostReq obj = PostReq(
                  title: txtTitlecontroller.text,
                  body: int.parse(txtBodycontroller.text).toString(),
                  userId: int.parse(txtIdcontroller.text),
                );
                resp = await NetworkApi.sentData(obj);
                setState(() {});
              },
              child: const Text('submit'),
            ),
            const SizedBox(
              height: 10,
            ),
            if (resp != null)
              Text(
                resp!.id.toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              )
          ],
        ),
      ),
    );
  }
}

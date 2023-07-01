import 'package:api_calling_demo/get_api_calling/photos_api/network_api.dart';
import 'package:api_calling_demo/get_api_calling/photos_api/photos_model.dart';
import 'package:flutter/material.dart';

class PhotosApiDemo extends StatefulWidget {
  const PhotosApiDemo({super.key});

  @override
  State<PhotosApiDemo> createState() => _PhotosApiDemoState();
}

class _PhotosApiDemoState extends State<PhotosApiDemo> {
  List<Photos> photosApiDemo = [];
  getApi() async {
    photosApiDemo = await NetworkApiDemo.fachPotosApi();
    setState(() {});
  }

  @override
  void initState() {
    getApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: photosApiDemo.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(photosApiDemo[index].id.toString()),
              Text(photosApiDemo[index].title.toString()),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  image: DecorationImage(
                    image: NetworkImage(
                      photosApiDemo[index].url.toString(),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                            NetworkImage(photosApiDemo[index].thumbnailUrl))),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:api_calling_demo/get_api_calling/alubum_api/alubum_model.dart';
import 'package:api_calling_demo/get_api_calling/alubum_api/network_api.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  late Future<List<Album>> futureAlbumData;
  // void getData() async {
  //   await NetworkApi.fetchAlubumData();
  // }

  @override
  void initState() {
    // getData();
    futureAlbumData = NetworkApi.fetchAlubumData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: futureAlbumData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      child: Text(snapshot.data![index].id.toString()),
                    ),
                    title: Text(snapshot.data![index].title!),
                    subtitle: Text(snapshot.data![index].userId.toString()),
                  ));
        } else {
          return const CircularProgressIndicator();
        }
      },
    ));
  }
}

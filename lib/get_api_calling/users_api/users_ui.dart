import 'package:api_calling_demo/get_api_calling/users_api/network_api.dart';
import 'package:api_calling_demo/get_api_calling/users_api/users_model.dart';
import 'package:flutter/material.dart';

class UsersApiDemo extends StatefulWidget {
  const UsersApiDemo({super.key});

  @override
  State<UsersApiDemo> createState() => _UsersApiState();
}

class _UsersApiState extends State<UsersApiDemo> {
  List<Users> usersData = [];

  getData() async {
    usersData = await NetworkApi.fachusersData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: usersData.length,
        itemBuilder: (context, index) {
          return Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('id  : ${usersData[index].id.toString()}'),
                Text('name  :${usersData[index].name}'),
                Text('username  :${usersData[index].username}'),
                Text('email  : ${usersData[index].email}'),
                Text('adress:{'
                    'street: '
                    '${usersData[index].address.street}},{'
                    'suite:'
                    '${usersData[index].address.suite}},{'
                    'city:'
                    '${usersData[index].address.city}},{'
                    'hashCode :'
                    '${usersData[index].address.hashCode}}'),
                Text('geo:{'
                    'lat: '
                    '${usersData[index].address.geo.lat}},{'
                    'lng:'
                    '${usersData[index].address.geo.lng}}'),
                Text('phone  :${usersData[index].phone}'),
                Text('website:  ${usersData[index].website}'),
                Text(
                  'company: {'
                  'name :'
                  '${usersData[index].company.name}},{'
                  'catchPhrase  :'
                  '${usersData[index].company.catchPhrase}}{'
                  'bs  :'
                  '${usersData[index].company.bs}}',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

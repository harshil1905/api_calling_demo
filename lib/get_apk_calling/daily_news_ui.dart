import 'package:api_calling_demo/get_apk_calling/apple/apple_ui.dart';
import 'package:api_calling_demo/get_apk_calling/business/business_ui.dart';
import 'package:api_calling_demo/get_apk_calling/tesla/tesla_ui.dart';
import 'package:flutter/material.dart';

class DailyNewsUI extends StatefulWidget {
  const DailyNewsUI({super.key});

  @override
  State<DailyNewsUI> createState() => _DailyNewsUIState();
}

class _DailyNewsUIState extends State<DailyNewsUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade500,
          title: const Text('news'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Apple'),
              ),
              Tab(
                child: Text('Tesla'),
              ),
              Tab(
                child: Text('Business'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AppleUIDemo(),
            TeslaUIDemo(),
            BusinessUIDemo(),
          ],
        ),
      ),
    );
  }
}

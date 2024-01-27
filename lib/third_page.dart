import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ThirdPage());
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Third Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/first");
                },
                child: Text("Get Back To The First Page"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Get Back To Second Page"),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

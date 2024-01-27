import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const SecondPage());
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/third");
                  },
                  child: Text("Navigate To Third")),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

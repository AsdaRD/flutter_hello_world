import 'package:flutter/material.dart';
import 'package:flutter_hello_world/utils/constants.dart';

class HelloWorldScreen extends StatefulWidget {
  const HelloWorldScreen({Key? key}) : super(key: key);

  @override
  State<HelloWorldScreen> createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen> {
  List<Widget> helloWorlds = [
    kHelloWorldTitle,
  ];
  Icon floatingActionButtonIcon = kIconAdd;

  void _addHelloWorld() {
    setState(() {
      if (helloWorlds.length < 20) {
        helloWorlds.add(kHelloWorldTitle);
        if (helloWorlds.length == 20) {
          floatingActionButtonIcon = kIconRemove;
        }
      } else {
        helloWorlds = [
          kHelloWorldTitle,
        ];
        floatingActionButtonIcon = kIconAdd;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: helloWorlds,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _addHelloWorld,
          child: floatingActionButtonIcon,
        ),
      ),
    );
  }
}

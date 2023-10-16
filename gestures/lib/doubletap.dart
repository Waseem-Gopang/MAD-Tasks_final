import 'package:flutter/material.dart';

class DoubleTap extends StatefulWidget {
  const DoubleTap({super.key});

  @override
  State<DoubleTap> createState() => _DoubleTapState();
}

class _DoubleTapState extends State<DoubleTap> {
  Color bgColor = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onDoubleTap: () {
          setState(() {
            bgColor = Colors.blue;
          });
        },
        child: Scaffold(
          appBar: AppBar(title: const Text("Double Tap")),
          body: Container(
            width: 200,
            height: 200,
            color: bgColor,
          ),
        ));
  }
}

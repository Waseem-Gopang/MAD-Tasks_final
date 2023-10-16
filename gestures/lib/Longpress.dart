import 'package:flutter/material.dart';

class LongPress extends StatefulWidget {
  const LongPress({super.key});

  @override
  State<LongPress> createState() => _LongPressState();
}

class _LongPressState extends State<LongPress> {
  Color bgColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          setState(() {
            bgColor = Colors.blue;
          });
        },
        child: Scaffold(
          appBar: AppBar(title: const Text("LongPress")),
          body: Container(
            width: 200,
            height: 200,
            color: bgColor,
          ),
        ));
  }
}

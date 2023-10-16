import 'package:flutter/material.dart';

class Drag extends StatefulWidget {
  const Drag({super.key});

  @override
  State<Drag> createState() => _DragState();
}

class _DragState extends State<Drag> {
  Offset offset = const Offset(0.0, 0.0);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          offset = Offset(
              offset.dx + details.delta.dx, offset.dy + details.delta.dy);
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Drag"),
        ),
        body: Center(
            child: Transform.translate(
                offset: offset, child: Image.asset("assets/anime.jpg"))),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Contact Information")),
            leading: const IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: null),
            actions: const [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: null),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.call_made,
                    color: Colors.white,
                  )),
            ],
          ),
          body: Center(
            child: Container(
                height: 180,
                width: 300,
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.purple),
                child: const Column(
                  children: [
                    Text(
                      "+92309-0135349",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 3,
                          fontSize: 25),
                    ),
                    Text(
                      "+92300-1283753",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 3,
                          fontSize: 25),
                    ),
                    Text(
                      "+92318-3280881",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 3,
                          fontSize: 25),
                    )
                  ],
                )),
          )),
    );
  }
}

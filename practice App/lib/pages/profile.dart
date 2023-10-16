import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text("Profile"),
            ),
            leading: const IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            actions: const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.security_sharp,
                    color: Colors.white,
                  ))
            ],
          ),
          body: Container(
              height: 600,
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.all(20),
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple),
              child: const Column(
                children: [
                  Text(
                    "Hello! I am Waseem Ali.\nI belong to Village Agha Hashim Shah Jagir, a village in District Khairpur Mir's.\nI received my early education till 7th class from Mehran School Kumb,then i received further education till higher Secondary from Mazhar College Ranipur.\nFinally I done my B.E in Software Engineering from MUET Jamshoro.\n",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3),
                  ),
                ],
              ))),
    );
  }
}

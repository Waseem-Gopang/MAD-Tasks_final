import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(child: Icon(Icons.developer_mode)),
                  Tab(
                    child: Icon(Icons.library_music_outlined),
                  ),
                ],
              ),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              title: const Center(child: Text("Home Page")),
              actions: const [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.search_sharp,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ))
              ]),
          body: TabBarView(
            children: [
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: const Color.fromARGB(255, 196, 229, 10),
                    child: const Text("You can learn front-end development"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: const Color.fromARGB(255, 21, 244, 221),
                    child: const Text('You can learn back-end development'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: const Color.fromARGB(255, 5, 230, 61),
                    child: const Text('You can learn full-Stack development'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: const Color.fromARGB(255, 126, 7, 237),
                    child: const Text(
                        'You can learn Flutter for Android Development'),
                  ),
                ],
              ),
              ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Song 1')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Song 2')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Song 3')),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

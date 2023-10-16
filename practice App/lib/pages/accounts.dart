import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: const IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            title: const Center(child: Text("Accounts")),
            actions: const [
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.assured_workload_outlined,
                  color: Colors.white,
                ),
                onPressed: null,
              )
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
              child: const Column(children: [
                Text(
                  "JazzCash Account No: 03001283753\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                Text(
                  "EasyPaisa Account No: 03001283753\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                Text(
                  "JS-Zindagi Account No: 03001283753\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                Text(
                  "NayaPay Account No: 03001283753\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                Text(
                  "SadaPay Account No: 03001283753\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                Text(
                  "FirstPay Account No: 03001283753\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                Text(
                  "UPaisa Account No: 03001283753\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                Text(
                  "Konnect Account No: 03001283753\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                Text(
                  "HBL Account No: 12087901103603\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ]))),
    );
  }
}

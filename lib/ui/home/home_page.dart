import 'package:flutter/material.dart';

import '../../ui/home/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat App",
        ),
        actions: [
          IconButton(
            onPressed: () {
              //onpress
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: HomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //on press
        },
        tooltip: "Chat",
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}

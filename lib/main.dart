import 'package:flutter/material.dart';

void main() {
  runApp(Apps());
}

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        actions: [
          IconButton(
              onPressed: () {
                //ketika timbol ditekan
              },
              icon: Icon(Icons.search, color: Colors.white)),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return {
                "New group",
                "New broadcast",
                "Linked devices",
                "Starred messages",
                "Settings"
              }.map((String pilihan) {
                return PopupMenuItem<String>(
                  value: pilihan,
                  child: Text(pilihan),
                );
              }).toList();
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ketika tombol ditekan
        },
        tooltip: "Chat",
        backgroundColor: Colors.green,
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            chatItem(
                NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                "Burung Hantu",
                "sebuah pesan",
                "12/10/11",
                "2"),
            chatItem(
                NetworkImage(
                    'https://www.10viacomcbs.com.au/wp-content/uploads/2020/09/spongebob-squarepants-400x400-1.jpg'),
                "Spongebob",
                "peringatan",
                "Yesterday",
                "4"),
            chatItem(AssetImage("assets/images/naruto400x400.jpg"), "Naruto",
                "ayo memasak krabby patty", "Today", "2"),
          ],
        ),
      ),
    );
  }

  Container chatItem(ImageProvider image, String namaPengirim,
      String pesanTerakhir, String tanggalKirim, String belumDibaca) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image, fit: BoxFit.fill),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    namaPengirim,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text(
                      pesanTerakhir,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  tanggalKirim,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Text(
                    belumDibaca,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

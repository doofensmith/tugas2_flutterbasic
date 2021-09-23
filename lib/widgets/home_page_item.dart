import 'package:flutter/material.dart';

class HomePageItem extends StatelessWidget {
  HomePageItem({
    required this.profileImage,
    required this.senderName,
    required this.lastMessage,
    required this.sentDate,
    this.unread = 0,
  });

  final ImageProvider profileImage;
  final String senderName;
  final String lastMessage;
  final int unread;
  final String sentDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundImage: this.profileImage,
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
                    this.senderName,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text(
                      this.lastMessage,
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
                  this.sentDate,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Text(
                    this.unread.toString(),
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

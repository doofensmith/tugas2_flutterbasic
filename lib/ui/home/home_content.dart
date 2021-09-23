import 'package:flutter/material.dart';

import '../../models/model_chat_item.dart';
import '../../dummy_data/data_chat_item.dart';
import '../../widgets/home_page_item.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        MChatItem data = DataChatItem.mChatItem[index];
        return HomePageItem(
          profileImage: NetworkImage(
            data.getUrlProfilePic() ?? "",
          ),
          senderName: data.getChatSender() ?? "",
          lastMessage: data.getLastMessages() ?? "",
          sentDate: data.getSentDate() ?? "",
          unread: data.getChatUnread() ?? 0,
        );
      },
      itemCount: DataChatItem.mChatItem.length,
    );
  }
}

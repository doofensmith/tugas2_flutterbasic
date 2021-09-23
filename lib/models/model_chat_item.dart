class MChatItem {
  //attribut
  String? _urlProfilePic;
  String? _chatSender;
  String? _lastMessages;
  int? _chatUnread;
  String? _sentDate;

  //constructor
  MChatItem(
    String? urlProfilePic,
    String? chatSender,
    String? lastMessages,
    int? chatUnread,
    String? sentDate,
  ) {
    this._urlProfilePic = urlProfilePic;
    this._chatSender = chatSender;
    this._lastMessages = lastMessages;
    this._chatUnread = chatUnread;
    this._sentDate = sentDate;
  }

  //getter n setter
  String? getUrlProfilePic() {
    return this._urlProfilePic;
  }

  void setUrlProfilePic(String urlProfilePic) {
    this._urlProfilePic = urlProfilePic;
  }

  String? getChatSender() {
    return this._chatSender;
  }

  void setChatSender(String chatSender) {
    this._chatSender = chatSender;
  }

  String? getLastMessages() {
    return this._lastMessages;
  }

  void setLastMessages(String lastMessages) {
    this._lastMessages = lastMessages;
  }

  int? getChatUnread() {
    return this._chatUnread;
  }

  void setChatUnread(int chatUnread) {
    this._chatUnread = chatUnread;
  }

  String? getSentDate() {
    return this._sentDate;
  }

  void setSentDate(String sentDate) {
    this._sentDate = sentDate;
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController ChatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'que tal ?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    ChatScrollController.animateTo(
      ChatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

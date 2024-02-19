import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsetsDirectional.only(
              start: 16, top: 16, bottom: 16, end: 16),
          decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(25),
                topEnd: Radius.circular(25),
                topStart: Radius.circular(25),
              )),
          child: Text(
            message.message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsetsDirectional.only(
              start: 16, top: 16, bottom: 16, end: 16),
          decoration: const BoxDecoration(
              color: Color(0xff006D84),
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(25),
                topEnd: Radius.circular(25),
                topStart: Radius.circular(25),
              )),
          child: Text(
            message.message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

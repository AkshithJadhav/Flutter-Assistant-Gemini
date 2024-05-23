import 'package:flutter/material.dart';
class MessageWidget extends StatelessWidget {
  final String text;
  final bool isFromUser;
  const MessageWidget({
    super.key,
    required this.text,
    required this.isFromUser,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          margin: const EdgeInsets.only(bottom: 14),
          constraints: const BoxConstraints(maxWidth: 520),
          decoration: BoxDecoration(
            color: isFromUser ? Colors.green.shade400 : Colors.blue.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TypingIndicator extends StatelessWidget {
  const TypingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        '🤖 PocketProfessor is typing...',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }
}

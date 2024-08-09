import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;

  const MessageFieldBox({
    super.key,
    required this.controller,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Add a new todo item',
            ),
          ),
        ),
        const SizedBox(width: 16),
        FloatingActionButton(
          onPressed: onPressed,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}

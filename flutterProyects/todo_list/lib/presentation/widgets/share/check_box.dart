// lib/presentation/widgets/share/check_box.dart

import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const CustomCheckbox({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Checkbox(
          value: taskCompleted,
          onChanged: onChanged,
          checkColor: theme.colorScheme.onPrimary,
          activeColor: theme.colorScheme.primaryContainer,
          side: BorderSide(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Expanded(
          child: Text(
            taskName,
            style: TextStyle(
              color: theme.colorScheme.onPrimary,
              fontSize: 18,
              decoration: taskCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationColor: theme.colorScheme.onPrimary,
              decorationThickness: 2,
            ),
          ),
        ),
      ],
    );
  }
}

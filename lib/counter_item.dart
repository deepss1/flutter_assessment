import 'package:flutter/material.dart'
    show
        BuildContext,
        Key,
        ListTile,
        StatelessWidget,
        Text,
        TextButton,
        VoidCallback,
        Widget;

/// Widget for each item in the list.
class CounterItemWidget extends StatelessWidget {
  /// Constructor for ListItemWidget.
  const CounterItemWidget({
    required this.value,
    required this.onIncrement,
    Key? key,
  }) : super(key: key);

  /// Current value of the item
  final int value;

  /// Get the index of the list item.
  final VoidCallback onIncrement;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(value.toString()),
      trailing: TextButton(
        onPressed: onIncrement,
        child: const Text('+'),
      ),
    );
  }
}

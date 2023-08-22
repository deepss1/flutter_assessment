import 'package:flutter/material.dart'
    show
        BuildContext,
        Container,
        EdgeInsets,
        Key,
        ListTile,
        StatelessWidget,
        Text,
        TextButton,
        VoidCallback,
        Widget;

/// Widget for each item in the list.
class ListItemWidget extends StatelessWidget {
  /// Constructor for ListItemWidget.
  const ListItemWidget({
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
    return Container(
      padding: const EdgeInsets.all(4),
      child: ListTile(
        dense: true,
        title: Text(value.toString()),
        trailing: TextButton(
          onPressed: onIncrement,
          child: const Text('+'),
        ),
      ),
    );
  }
}

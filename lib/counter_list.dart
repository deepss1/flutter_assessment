import 'package:flutter/material.dart'
    show
        AppBar,
        AutomaticKeepAliveClientMixin,
        BuildContext,
        Icon,
        IconButton,
        Icons,
        Key,
        ListView,
        Scaffold,
        State,
        StatefulWidget,
        Text,
        Widget;
import 'package:solution/list_item.dart';

/// Counter List Widget
class CounterList extends StatefulWidget {
  /// Constructor for Counter List Widget.
  const CounterList({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterList> createState() => _CounterListState();
}

class _CounterListState extends State<CounterList>
    with AutomaticKeepAliveClientMixin {
  /// Counts for each item in the list.
  final List<int> counts = List<int>.filled(100, 0);

  void _incrementCount(int index) {
    setState(() {
      counts[index]++;
    });
  }

  void _refreshCounts() {
    setState(() {
      counts.fillRange(0, counts.length, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildCounterList(),
    );
  }

  ListView _buildCounterList() {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) => ListItemWidget(
        value: counts[index],
        onIncrement: () {
          _incrementCount(index);
        },
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Counter List'),
      actions: <Widget>[
        IconButton(
          onPressed: _refreshCounts,
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

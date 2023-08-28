import 'package:flutter/material.dart';
import 'package:flutter_application_1/presention-layer/widgets/customcard.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class CustomSnapList extends StatefulWidget {
  const CustomSnapList({super.key});

  @override
  State<CustomSnapList> createState() => _CustomSnapListState();
}

class _CustomSnapListState extends State<CustomSnapList> {
  int _focusedIndex = 0;

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Center(
          child: ScrollSnapList(
            focusOnItemTap: true,
            dynamicItemSize: true,
            onItemFocus: _onItemFocus,
            itemSize: 290,
            itemCount: 8,
            itemBuilder: (context, index) => const Center(
              child: MatchCard(),
            ),
          ),
        ));
  }
}

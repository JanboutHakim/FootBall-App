import 'package:flutter/material.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/customcard.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class CustomSnapList extends StatefulWidget {
  const CustomSnapList({super.key, required this.width});
  final double width;
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
            itemSize: widget.width,
            itemCount: 8,
            itemBuilder: (context, index) => Center(
              child: MatchCard(
                width: widget.width,
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'package:flutter_application_1/presention-layer/widgets/customappbar.dart';
import 'package:flutter_application_1/presention-layer/widgets/custombuttonnavbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primarycolor1,
        body: Column(
          children: [
            CustomAppBar(),
            Container(
                height: 200,
                child: Center(
                  child: ScrollSnapList(
                    focusOnItemTap: true,
                    dynamicItemSize: true,
                    onItemFocus: _onItemFocus,
                    itemSize: 290,
                    itemCount: 8,
                    itemBuilder: (context, index) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          height: 200,
                          width: 290,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar());
  }

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  int _focusedIndex = 0;
}

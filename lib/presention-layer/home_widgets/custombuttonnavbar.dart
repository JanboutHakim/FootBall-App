import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/Customicon.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int index = 0;
  final List<IconData> icons = const [
    Icons.home,
    Icons.list_alt_sharp,
    Icons.archive,
    Icons.man
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: secondrycolor1,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.red,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.yellow))),
      child: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: const Color.fromARGB(255, 114, 103, 72),
        selectedItemColor: secondrycolor3,
        unselectedItemColor: secondrycolor2,
        showSelectedLabels: false,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: 'home',
              icon: CustomIcon(
                icon: icons[0],
              )),
          BottomNavigationBarItem(
              label: 'list',
              icon: CustomIcon(
                icon: icons[1],
              )),
          BottomNavigationBarItem(
              label: 'saved',
              icon: CustomIcon(
                icon: icons[2],
              )),
          BottomNavigationBarItem(
              label: 'profile',
              icon: CustomIcon(
                icon: icons[3],
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:music_app/screens/screens.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomeScreen(),
        MusicScreen(),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.music,
      FeatherIcons.settings,
    ];
    return Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              return IconButton(
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: Colors.white,
                ),
              );
            }),
          ),
        ));
  }
}

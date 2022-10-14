import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:music_app/assets.dart';
import 'package:music_app/data/theme/colors.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              backgroundColor: black,
              elevation: 0,
              // ignore: prefer_const_literals_to_create_immutables
              actions: [
                const IconButton(
                    icon: Icon(
                      FeatherIcons.moreVertical,
                      color: Colors.white,
                    ),
                    onPressed: null)
              ],
              title: const Center(
                child: Text(
                  'Playing Now',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 15,
                  right: 30,
                  bottom: 10,
                ),
                child: Container(
                  width: 600,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.starlight), fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Starlight',
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.bold,
                          fontSize: 48,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Dave',
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              child: Slider(
                activeColor: primary,
                value: _currentSliderValue,
                min: 0,
                max: 150,
                onChanged: (value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 35,
                right: 35,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1:50',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontFamily: 'ProximaSoft'),
                  ),
                  Text(
                    '5:00',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontFamily: 'ProximaSoft'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60.0,
                right: 60.0,
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.shuffle,
                      color: white.withOpacity(0.8),
                      size: 25,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.skipBack,
                      color: white.withOpacity(0.8),
                      size: 25,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    iconSize: 60,
                    icon: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: primary,
                      ),
                      child: const Center(
                        child: Icon(
                          FeatherIcons.play,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.skipForward,
                      color: white.withOpacity(0.8),
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.repeat,
                      color: white.withOpacity(0.8),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 35,
                right: 35,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.speaker,
                      color: white.withOpacity(0.8),
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.share,
                      color: white.withOpacity(0.8),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 15,
                  right: 30,
                  bottom: 10,
                ),
                child: Container(
                  width: 600,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: SizedBox(
                    height: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                        top: 24.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Lyrics',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

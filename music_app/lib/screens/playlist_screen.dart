import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:music_app/data/theme/colors.dart';
import 'package:music_app/screens/album_screen.dart';
import 'package:music_app/screens/play_screen.dart';
import 'package:music_app/screens/screens.dart';

import '../assets.dart';
import 'music_screen.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Container(
                  width: 400,
                  height: 50,
                  child: CupertinoSearchTextField(),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                    ),
                    Container(
                        height: 50,
                        width: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          color: Colors.white,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MusicScreen()));
                          },
                          child: const Text(
                            'Song',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                            ),
                          ),
                        )),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Colors.white,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AlbumScreen()));
                        },
                        child: const Center(
                          child: (Text(
                            'Album',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                            ),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Colors.white,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PlaylistScreen()));
                        },
                        child: const Center(
                          child: (Text(
                            'Playlist',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                            ),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Colors.white,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Center(
                          child: (Text(
                            'Podcast',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 15),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 120,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlayScreen(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Gospel',
                      style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      color: white,
                      image: DecorationImage(
                          image: AssetImage(Assets.mog), fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'My Gospel',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: white,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          'Playlist by Selorm',
                          style: const TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontSize: 12,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 170.0),
                  child: IconButton(
                      icon: Icon(
                        FeatherIcons.moreVertical,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: white,
                        image: DecorationImage(
                            image: AssetImage(Assets.starlight),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Afternoon Drive',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: white,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          'Playlist by Selorm',
                          style: const TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontSize: 12,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 120.0),
                  child: IconButton(
                      icon: Icon(
                        FeatherIcons.moreVertical,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      color: white,
                      image: DecorationImage(
                          image: AssetImage(Assets.damn), fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Hip Hop Track',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: white,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          'Playlist by Selorm',
                          style: const TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontSize: 12,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 130.0),
                  child: IconButton(
                      icon: Icon(
                        FeatherIcons.moreVertical,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

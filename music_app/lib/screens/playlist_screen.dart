import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/theme/colors.dart';
import 'package:music_app/screens/screens.dart';

import '../assets.dart';

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
            const Padding(
              padding: EdgeInsets.all(30),
            ),

            //Search Bar
            Center(
              child: Container(
                width: 400,
                height: 50,
                child: const CupertinoSearchTextField(),
                decoration: BoxDecoration(
                  color: Colors.transparent,
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

                    //Song Buttom
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

                    //Ablum Buttom
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

                    //Playlist Buttom
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

                    //Podcast buttom
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
            const SizedBox(
              height: 20,
            ),

            //Gospel Playlist
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Gospel'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Created by Black Seal',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            //Gh Hiphop Playlist
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('GH Hip Hop'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Created by Black Seal',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            //Afternoon Drive
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Afternoon Drive'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Created by Black Seal',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Gospel'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Local & International',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Gospel'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Local & International',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Gospel'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Local & International',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Gospel'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Local & International',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Gospel'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Local & International',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: const Text(
                  ('Gospel'),
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Local & International',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                // ignore: avoid_returning_null_for_void
                onTap: () => null,
                textColor: white,
                iconColor: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

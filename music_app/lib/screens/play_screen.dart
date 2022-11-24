import 'package:audioplayers/audioplayers.dart';
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
  final audioplayer = AudioPlayer();
  bool isPlaying = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  double _currentSliderValue = 20;

  @override
  void initState() {
    super.initState();

    audioplayer.onPlayerStateChanged.listen((state) {
      if (isPlaying) {
        setState(() {
          state == PlayerState.playing;
        });
      } else {
        state == PlayerState.paused;
      }
    });

    audioplayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioplayer.onPositionChanged.listen((newPosition) {
      position = newPosition;
    });
  }

  Future setAudio() async {
    audioplayer.setReleaseMode(ReleaseMode.loop);
  }

  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }

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
                value: position.inSeconds.toDouble(),
                min: 0,
                max: duration.inSeconds.toDouble(),
                onChanged: (value) {
                  final position = Duration(seconds: value.toInt());
                  audioplayer.seek(position);
                  audioplayer.resume();
                  /* if ((duration.inSeconds - position.inSeconds) == 0) {
                    audioplayer.stop();
                    isPlaying = false;
                  }*/
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
                    formatTime(position),
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontFamily: 'ProximaSoft'),
                  ),
                  Text(
                    formatTime(duration - position),
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

                  //Skipback buttom
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.skipBack,
                      color: white.withOpacity(0.8),
                      size: 25,
                    ),
                  ),

                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                      icon: Icon(
                        isPlaying == false ? Icons.pause : Icons.play_arrow,
                      ),
                      iconSize: 50,
                      onPressed: () async {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                        if (isPlaying) {
                          await audioplayer.pause();
                        } else {
                          String url =
                              'https://firebasestorage.googleapis.com/v0/b/musicapp-5143b.appspot.com/o/Songs%2FDave_-_Starlight.mp3?alt=media&token=b9c6558e-5038-4371-9466-fb991a2fe98c';
                          await audioplayer.play(UrlSource(url));
                        }
                      },
                    ),
                  ),
                  // Skipforward buttom
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FeatherIcons.skipForward,
                      color: white.withOpacity(0.8),
                      size: 20,
                    ),
                  ),

                  //Repeat buttom
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

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}

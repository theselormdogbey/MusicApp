import 'package:flutter/material.dart';

class PlaylistSong_Screen extends StatelessWidget {
  const PlaylistSong_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Songs'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:music_app/data/theme/colors.dart';

import '../assets.dart';
import '../data/data.dart';
import '../widgets/content_header.dart';
import '../widgets/content_list.dart';
import '../widgets/previews.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.music_note),
        onPressed: () {
          print('Cast');
        },
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: black,
        title: Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Good Afternoon, Selorm',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: null,
                iconSize: 50,
                icon: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(Assets.black), fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: ContentHeader(featuredContent: sintelContent),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 15.0),
            sliver: SliverToBoxAdapter(
              child: Previews(
                title: 'Friends',
                contentList: previews,
                key: PageStorageKey('Friends'),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              title: 'New Tracks',
              contentList: myList,
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              title: 'Recently Played',
              contentList: originals,
              isOriginals: true,
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              title: 'Songs',
              contentList: songs,
            ),
          ),
        ],
      ),
    );
  }
}

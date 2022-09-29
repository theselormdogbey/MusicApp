// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/content_model.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({
    Key? key,
    required this.featuredContent,
  }) : super(key: key);

  final Content featuredContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 420,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: CupertinoSearchTextField(),
          ),
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}

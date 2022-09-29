import 'package:flutter/material.dart';

class Content {
  final String name;
  final String imageUrl;
  final String videoUrl;
  final String description;
  final Color color;

  const Content({
    required this.name,
    required this.imageUrl,
    required this.videoUrl,
    required this.description,
    required this.color,
  });
}

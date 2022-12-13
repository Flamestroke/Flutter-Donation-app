import 'package:flutter/material.dart';

class Creators {
  final String image, title ,profession;
  final int id;
  final Gradient gradient;
  final Color color;
  Creators({
    required this.id,
    required this.image,
    required this.title,
    required this.profession,
    required this.color,
    required this.gradient,
  });
}

List<Creators> creator = [
  Creators(
    id: 0,
    title: "BhuvanBam",
    profession: "Actor",
    image: "Assets/Avatars/bb.png",
    color: Colors.yellow,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.yellow,
        Colors.black,
      ],
    ),
  ),
  Creators(
    id: 1,
    title: "Carryminati",
    profession: "YouTuber",
    image: "Assets/Avatars/carry.png",
    color: Colors.cyan,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.cyan,
        Colors.black,
      ],
    ),
  ),
  Creators(
    id: 2,
    title: "Markiplier",
    profession: "Content Creator",
    image: "Assets/Avatars/mark.png",
    color: Colors.red,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.red,
        Colors.black,
      ],
    ),
  ),
  Creators(
    id: 3,
    title: "PewDiePie",
    profession: "Musician",
    image: "Assets/Avatars/pewds.png",
    color: Colors.lightGreenAccent,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.lightGreenAccent,
        Colors.black,
      ],
    ),
  ),
  Creators(
    id: 4,
    title: "BhuvanBam",
    profession: "Actor",
    image: "Assets/Avatars/bb.png",
    color: Colors.yellow,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.yellow,
        Colors.black,
      ],
    ),
  ),
  Creators(
    id: 5,
    title: "Carryminati",
    profession: "YouTuber",
    image: "Assets/Avatars/carry.png",
    color: Colors.cyan,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.cyan,
        Colors.black,
      ],
    ),
  ),
  Creators(
    id: 6,
    title: "Markiplier",
    profession: "Content Creator",
    image: "Assets/Avatars/mark.png",
    color: Colors.red,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.red,
        Colors.black,
      ],
    ),
  ),
  Creators(
    id: 7,
    title: "PewDiePie",
    profession: "Musician",
    image: "Assets/Avatars/pewds.png",
    color: Colors.lightGreenAccent,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.lightGreenAccent,
        Colors.black,
      ],
    ),
  ),
];

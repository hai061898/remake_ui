import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Planet {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  Planet({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.background,
  });
}

final dataplanet = [
  Planet(
    title: "Moon",
    subtitle: "The night sky has much to offer to those who seek its mystery.",
    image: const AssetImage("assets/planet/p1.png"),
    backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
    titleColor: const Color.fromARGB(255, 180, 142, 18),
    subtitleColor: Colors.white,
    background: LottieBuilder.asset("assets/json/bg-1.json"),
  ),
  Planet(
    title: "space",
    subtitle: "An endless number of galaxies means endless possibilities.",
    image: const AssetImage("assets/planet/p2.png"),
    backgroundColor: Colors.white,
    titleColor: Colors.purple,
    subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
    background: LottieBuilder.asset("assets/json/bg-2.json"),
  ),
  Planet(
    title: "star night",
    subtitle: "The sky dome is a beautiful graveyard of stars.",
    image: const AssetImage("assets/planet/p3.png"),
    backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
    titleColor: Colors.yellow,
    subtitleColor: Colors.white,
    background: LottieBuilder.asset("assets/json/bg-3.json"),
  ),
];

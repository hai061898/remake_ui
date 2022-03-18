import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:re_ui/liquid_swipe/planet/container_plw.dart';

class PlanetLS extends StatefulWidget {
  const PlanetLS({Key? key}) : super(key: key);

  @override
  State<PlanetLS> createState() => _PlanetLSState();
}

class _PlanetLSState extends State<PlanetLS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        // slideIconWidget: true,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}

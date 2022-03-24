import 'package:flutter/material.dart';
import 'package:re_ui/onboarding/onboarding_lottie/components/card_planet.dart';
import 'package:re_ui/onboarding/onboarding_lottie/models/planet.dart';
import 'package:concentric_transition/concentric_transition.dart';

class StarNight extends StatelessWidget {
  const StarNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: dataplanet.map((e) => e.backgroundColor).toList(),
        itemCount: dataplanet.length,
        itemBuilder: (int index, double value) {
          return CardPlanet(data: dataplanet[index]);
        },
      ),
    );
  }
}

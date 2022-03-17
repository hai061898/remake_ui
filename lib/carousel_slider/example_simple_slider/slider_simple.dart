import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

import 'list_img.dart';

class CarouselSliderExample extends StatelessWidget {
  const CarouselSliderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: CarouselSlider.builder(
            slideBuilder: (index) {
              return Image.asset(
                '${imgList[index]}',
                fit: BoxFit.cover,
              );
            },
            unlimitedMode: true,
            slideTransform: const CubeTransform(),
            slideIndicator: CircularSlideIndicator(
                indicatorBackgroundColor: Colors.white,
                currentIndicatorColor: Colors.grey[800]!,
                indicatorBorderColor: Colors.grey[400]!,
                padding: const EdgeInsets.only(bottom: 32)),
            itemCount: 3),
      ),
    );
  }
}

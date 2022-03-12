// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardFrosted extends StatelessWidget {
  const CardFrosted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Stack(children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7,
                sigmaY: 7,
              ),
              child: Container(
                height: 220,
                width: 360,
              ),
            ),
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                "assets/bg_c.png",
                width: 360,
                height: 230,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 230,
              width: 360,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                    )
                  ],
                  border: Border.all(
                      color: Colors.white.withOpacity(0.2), width: 1.0),
                  // color: Colors.blue,
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.1)
                    ],
                    stops: const [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 270,
                      child: SvgPicture.asset(
                        "assets/svg/visa.svg",
                        width: 66,
                        color: Colors.white.withOpacity(0.5),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      "0618   1998   6000   1200   ",
                      style: TextStyle(
                          fontSize: 23, color: Colors.white.withOpacity(0.4)),
                    ),
                    SizedBox(
                      width: 275,
                      child: Row(
                        children: [
                          Text(
                            "9999",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 12),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          Text(
                            "VALID \n THRU",
                            style: TextStyle(
                                fontSize: 6,
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "  06/36",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: 275,
                        child: Text(
                          "NGUYEN TRUONG HAI",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

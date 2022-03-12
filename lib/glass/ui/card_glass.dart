import 'package:flutter/material.dart';

import 'components/card_frosted.dart';

class CardGlass extends StatelessWidget {
  const CardGlass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const CardFrosted(),
      ),
    );
  }
}
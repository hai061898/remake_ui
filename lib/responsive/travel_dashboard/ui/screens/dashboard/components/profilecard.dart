import 'package:flutter/material.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/themes/colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: kBgColor, borderRadius: BorderRadius.circular(50)),
          child: Image.asset(
            "assets/profile.webp",
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hai Auto",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "Travel Vietnamese",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          width: 15.0,
        ),
        const Icon(Icons.keyboard_arrow_down)
      ],
    );
  }
}
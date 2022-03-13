import 'package:flutter/material.dart';
import 'package:re_ui/responsive/travel_dashboard/data/models/dist_info.dart';

class DistinationCard extends StatelessWidget {
  const DistinationCard({
    Key? key,
    required this.distInfo,
  }) : super(key: key);
  final DistInfo distInfo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(distInfo.image),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  distInfo.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 16,
                    ),
                    Text(
                      distInfo.location,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 16,
                    ),
                    Text(
                      "${distInfo.star}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              "\$${distInfo.price}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DistinationCardMob extends StatelessWidget {
  const DistinationCardMob({
    Key? key,
    required this.distInfo,
  }) : super(key: key);
  final DistInfo distInfo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(distInfo.image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              distInfo.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 16,
                ),
                Text(
                  distInfo.location,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 16,
                ),
                Text(
                  "${distInfo.star}",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\$${distInfo.price}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

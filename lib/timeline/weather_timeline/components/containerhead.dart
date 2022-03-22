import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerHeader extends StatelessWidget {
  const ContainerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 120),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'now - 17:30',
              style: GoogleFonts.lato(
                fontSize: 18,
                color: const Color.fromARGB(255, 247, 244, 245),
              ),
            ),
            Text(
              'Sunny',
              style: GoogleFonts.lato(
                fontSize: 30,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w800,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    'Humidity 40%',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 250, 250, 253)
                          .withOpacity(0.8),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  '30°C',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 241, 241, 243)
                        .withOpacity(0.8),
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

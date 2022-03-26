import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:re_ui/school/school1_it_error/data/models/alert.dart';
import 'package:re_ui/school/school1_it_error/ui/themes/colors.dart';
import 'package:re_ui/school/school1_it_error/ui/themes/text.dart';


import 'countdown_painter.dart';

// ignore: use_key_in_widget_constructors
class RecentsAlerts extends StatelessWidget {

  final DateFormat dateFormat = DateFormat("hh:mm a");





  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: recentAlerts.length,
      itemBuilder: (BuildContext context, int index) {
        Alert alert = recentAlerts[index];
        int hoursLeft = DateTime.now().difference(alert.time!).inHours;
        hoursLeft = hoursLeft < 0 ? -hoursLeft : 0;
        double percent = hoursLeft / 48;

        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              height: 130.0,
              width: 15.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              height: 130.0,
              width: 326.0,
              decoration: const BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        alert.title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.white,
                            size: 17.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "${DateTime.now().weekday == alert.time!.weekday ? "Today" : DateFormat.EEEE().format(alert.time!)}, ${dateFormat.format(alert.time!)}",
                            style: const TextStyle(
                              color: kTextColor,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          const Icon(
                            Icons.receipt,
                            color: Colors.white,
                            size: 17.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            alert.subject!,
                            style: const TextStyle(
                              color: kTextColor,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0.0,
                    child: CustomPaint(
                      foregroundPainter: CountdownPainter(
                        bgColor: kBGColor,
                        lineColor: _getColor(context, percent),
                        percent: percent,
                        width: 4.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "$hoursLeft",
                              style: TextStyle(
                                color: _getColor(context, percent),
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "hours left",
                              style: TextStyle(
                                color: _getColor(context, percent),
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  _getColor(BuildContext context, double percent) {
    if (percent >= 0.4) return Colors.white;

    return kHourColor;
  }
}
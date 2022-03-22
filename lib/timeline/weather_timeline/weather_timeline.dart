import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_ui/timeline/weather_timeline/components/containerhead.dart';
import 'package:re_ui/timeline/weather_timeline/components/icon_indicator.dart';
import 'package:re_ui/timeline/weather_timeline/components/sun.dart';

import 'package:timeline_tile/timeline_tile.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherTimeline extends StatelessWidget {
  const WeatherTimeline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 104, 39, 165),
            Color.fromARGB(255, 201, 91, 41),
          ],
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: theme.colorScheme.copyWith(
              secondary:
                  const Color.fromARGB(255, 100, 56, 170).withOpacity(0.2)),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: ListView(
              children: [
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.3,
                  isFirst: true,
                  indicatorStyle: const IndicatorStyle(
                    width: 70,
                    height: 70,
                    indicator: Sun(),
                  ),
                  beforeLineStyle:
                      LineStyle(color: Colors.white.withOpacity(0.7)),
                  endChild: const ContainerHeader(),
                ),
                buildTimelineTile(
                  indicator: const IconIndicator(
                    iconData: WeatherIcons.cloudy,
                    size: 20,
                  ),
                  hour: '18:00',
                  weather: 'Cloudy',
                  temperature: '26°C',
                  phrase: 'A beautiful afternoon to take a walk into the park.'
                      " Don't forget to take your water.",
                ),
                buildTimelineTile(
                  indicator: const IconIndicator(
                    iconData: WeatherIcons.sunset,
                    size: 20,
                  ),
                  hour: '20:00',
                  weather: 'Sunset',
                  temperature: '24°C',
                  phrase: 'Enjoy the view, the sun will be back tomorrow.',
                ),
                buildTimelineTile(
                  indicator: const IconIndicator(
                    iconData: WeatherIcons.night_alt_rain_mix,
                    size: 20,
                  ),
                  hour: '22:00',
                  weather: 'Fall of rain',
                  temperature: '18°C',
                  phrase: 'Temperature is decreasing...',
                ),
                buildTimelineTile(
                  indicator: const IconIndicator(
                    iconData: WeatherIcons.snowflake_cold,
                    size: 20,
                  ),
                  hour: '00:00',
                  weather: 'Chilly',
                  temperature: '16°C',
                  phrase: "Have a good night, don't forget your blanket.",
                  isLast: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        'Dak Nong',
        style: GoogleFonts.lato(
          color: const Color.fromARGB(255, 253, 251, 252),
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 250, 250, 250),
          ),
          onPressed: () {},
        )
      ],
    );
  }

  TimelineTile buildTimelineTile({
    IconIndicator? indicator,
    String? hour,
    String? weather,
    String? temperature,
    String? phrase,
    bool isLast = false,
  }) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      beforeLineStyle: LineStyle(color: Colors.white.withOpacity(0.7)),
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0.3,
        drawGap: true,
        width: 30,
        height: 30,
        indicator: indicator,
      ),
      isLast: isLast,
      startChild: Center(
        child: Container(
          alignment: const Alignment(0.0, -0.50),
          child: Text(
            hour!,
            style: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      endChild: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 10, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weather!,
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              temperature!,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              phrase!,
              style: GoogleFonts.lato(
                fontSize: 14,
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

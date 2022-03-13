import 'package:flutter/material.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/helpers/responsive.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/themes/colors.dart';
import 'package:table_calendar/table_calendar.dart';

import 'profilecard.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!Responsive.isMobile(context)) const ProfileCard(),
                  const SizedBox(
                    height: 20,
                  ),
                  TableCalendar(
                    focusedDay: DateTime.now(),
                    firstDay: DateTime(2022),
                    lastDay: DateTime(2050),
                    calendarStyle: const CalendarStyle(
                        todayDecoration: BoxDecoration(
                            color: kPrimaryColor, shape: BoxShape.circle)),
                  ),
                  const Divider(
                    thickness: 4,
                    color: kBgColor,
                  ),
                  Responsive(
                      mobile: _size.width <= 420
                          ? const SchudleCardMob()
                          : const SchudleCard(),
                      desktop: const SchudleCard()),
                ],
              ),
            ],
          ),
        ));
  }
}

class SchudleCardMob extends StatelessWidget {
  const SchudleCardMob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Schedule",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          ScheduleCardMob(
            image: "assets/ing/2.webp",
            press: () {},
            title: 'Forest',
          ),
          const SizedBox(
            height: 20,
          ),
          ScheduleCardMob(
            image: "assets/img/w2.jpg",
            press: () {},
            title: ' Waterfall',
          ),
          const SizedBox(
            height: 20,
          ),
          ScheduleCardMob(
            image: "assets/img/9.jpg",
            press: () {},
            title: 'Tuki Comp',
          ),
        ],
      ),
    );
  }
}

class SchudleCard extends StatelessWidget {
  const SchudleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Schedule",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          ScheduleCard(
            image: "assets/img/2.webp",
            press: () {},
            title: 'Crooked Forest',
          ),
          const SizedBox(
            height: 20,
          ),
          ScheduleCard(
            image: "assets/img/w2.jpg",
            press: () {},
            title: 'Sky Waterfall',
          ),
          const SizedBox(
            height: 20,
          ),
          ScheduleCard(
            image: "assets/img/9.jpg",
            press: () {},
            title: 'Tuki Comp',
          ),
        ],
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(
          left: 10,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.grey)),
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScheduleCardMob extends StatelessWidget {
  const ScheduleCardMob({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

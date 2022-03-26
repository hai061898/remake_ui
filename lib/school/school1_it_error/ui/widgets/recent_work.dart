import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:re_ui/school/school1_it_error/data/models/homework.dart';
import 'package:re_ui/school/school1_it_error/ui/themes/colors.dart';
import 'package:re_ui/school/school1_it_error/ui/themes/text.dart';


class RecentHomeworks extends StatefulWidget {
  const RecentHomeworks({Key? key}) : super(key: key);

  @override
  _RecentHomeworksState createState() => _RecentHomeworksState();
}

class _RecentHomeworksState extends State<RecentHomeworks> {
  DateFormat dateFormat = DateFormat("hh:mm a");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: recentHomeworks.length,
      itemBuilder: (BuildContext context, int index) {
        Homework homework = recentHomeworks[index];
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
              height: 100.0,
              width: 341.0,
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        homework.title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
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
                            "${DateTime.now().weekday == homework.dueTime!.weekday ? "Today" : DateFormat.EEEE().format(homework.dueTime!)}, ${dateFormat.format(homework.dueTime!)}",
                            style: const TextStyle(
                              color: kTextColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  _todoButton(homework),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  _todoButton(Homework homework) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          homework.isDone = !homework.isDone;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: homework.isDone ? Colors.green : Colors.transparent,
         shape: const CircleBorder(
        side: BorderSide(color: Colors.green),
      ),
      ),
     
     
      child: homework.isDone ? const Icon(Icons.check, color: Colors.white) : null,
    );
  }
}
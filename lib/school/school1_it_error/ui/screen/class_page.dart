import 'package:flutter/material.dart';
import 'package:re_ui/school/school1_it_error/ui/themes/text.dart';
import 'package:re_ui/school/school1_it_error/ui/widgets/build_class.dart';
import 'package:re_ui/school/school1_it_error/ui/widgets/header.dart';


class ClassesScreen extends StatefulWidget {
  const ClassesScreen({Key? key}) : super(key: key);

  @override
  _ClassesScreenState createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Header(),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Mac",
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("01", style: kCalendarDay),
                  const Text("02", style: kCalendarDay),
                  const Text("03", style: kCalendarDay),
                  Text(
                    "04",
                    style: kCalendarDay.copyWith(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text("05", style: kCalendarDay),
                  const Text("06", style: kCalendarDay),
                  const Text("07", style: kCalendarDay),
                ],
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 157.0, top: 3.0),
                child:  Text(
                  "THU",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(40.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            children: [
              BuildClasses(),
            ],
          ),
        ),
      ],
    );
  }
}
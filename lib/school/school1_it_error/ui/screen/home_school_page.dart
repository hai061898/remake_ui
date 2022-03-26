import 'package:flutter/material.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/screens/dashboard/components/head_rt.dart';
import 'package:re_ui/school/school1_it_error/ui/themes/text.dart';
import 'package:re_ui/school/school1_it_error/ui/widgets/recent_alerts.dart';
import 'package:re_ui/school/school1_it_error/ui/widgets/recent_work.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Header(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
            style: const TextStyle(color: kTextColor),
            cursorColor: kTextColor,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8.0),
              border: InputBorder.none,
              fillColor: Theme.of(context).primaryColor,
              filled: true,
              hintText: "Search",
              hintStyle: const TextStyle(color: kTextColor),
              prefixIcon: const Icon(Icons.search, color: kTextColor, size: 26.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        Container(
          padding: const EdgeInsets.all(35.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Recent Alerts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              RecentsAlerts(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 15.0),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Recent Homework",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              const RecentHomeworks(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 15.0),
                ),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ],
    );
  }
}
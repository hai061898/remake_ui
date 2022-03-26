class Homework {
  final String? title;
  final DateTime? dueTime;
  bool isDone = false;

  Homework({this.title, this.dueTime});
}

List<Homework> recentHomeworks = [
  Homework(
    title: "Planimetric Exercises",
    dueTime: DateTime.parse("2022-03-26 10:30:00"),
  ),
  Homework(
    title: "Visicosity Exercises",
    dueTime: DateTime.parse("2022-03-26 14:30:00"),
  ),
];
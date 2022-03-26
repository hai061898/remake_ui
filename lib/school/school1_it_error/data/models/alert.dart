class Alert {
  final String? title;
  final String? subject;
  final DateTime? time;

  Alert({this.title, this.subject, this.time});
}

List<Alert> recentAlerts = [
  Alert(
    title: "Math Test",
    subject: "Trigonometry",
    time: DateTime.parse("2022-03-26 12:30:00"),
  ),
  Alert(
    title: "Physics Test",
    subject: "Gravitation",
    time: DateTime.parse("2022-36-26 14:30:00"),
  ),
];
import 'package:flutter/material.dart';

class ListWS extends StatefulWidget {
  const ListWS({Key? key, this.c}) : super(key: key);
  final int? c;

  @override
  State<ListWS> createState() => _ListWSState();
}

class _ListWSState extends State<ListWS> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.c,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      position.toString(),
                      style: const TextStyle(fontSize: 22.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

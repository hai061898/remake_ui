import 'package:audio_manager/audio_manager.dart';
import 'package:flutter/material.dart';

class SongList extends StatelessWidget {
  final List<Map<String, String>> songList;

  const SongList(this.songList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: songList.length,
        itemBuilder: (context, songIndex) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              AudioManager.instance.play(index: songIndex);
            },
            child: Container(
              color: Colors.transparent,
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(
                      songList[songIndex]["coverUrl"]!,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(songList[songIndex]["title"]!,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                              Text("Desc: ${songList[songIndex]["desc"]}",
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

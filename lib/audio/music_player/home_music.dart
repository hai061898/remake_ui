

// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:audio_manager/audio_manager.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:math' as math;

import 'components.dart/data_music.dart';
import 'components.dart/list_song.dart';

class HomeMusicPage extends StatefulWidget {
  const HomeMusicPage({Key? key}) : super(key: key);

  @override
  _HomeMusicPageState createState() => _HomeMusicPageState();
}

class _HomeMusicPageState extends State<HomeMusicPage>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  Duration? _duration;
  Duration? _position;
  double _sliderValue = 0;
  PlayMode playMode = AudioManager.instance.playMode;

  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    setupAudio();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..repeat();
  }

  @override
  void dispose() {
    AudioManager.instance.release();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Player",
            style: TextStyle(fontSize: 20.0, color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
            decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 180, 4, 250),
                Color.fromARGB(255, 240, 81, 7),
              ]),
        )),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                const Color.fromARGB(255, 27, 140, 192),
                const Color.fromARGB(255, 3, 17, 95).withOpacity(.7),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 200.0,
                padding: const EdgeInsets.all(10.0),
                child: playerHeader(),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 81, 50, 153),
                          Color.fromARGB(255, 108, 31, 180),
                        ]),
                    borderRadius: BorderRadius.circular(20.0))),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Playlist (${list.length})",
                        style: const TextStyle(
                            fontSize: 20.0, color: Colors.white)),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Expanded(child: SongList(list)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  double getAngle() {
    var value = _controller?.value ?? 0;
    return value * 2 * math.pi;
  }

  Widget playerHeader() => Row(
        children: [
          CircularPercentIndicator(
            radius: 90.0,
            percent: _sliderValue,
            progressColor: const Color.fromARGB(255, 70, 163, 206),
            center: AnimatedBuilder(
              animation: _controller!,
              builder: (_, child) {
                return Transform.rotate(
                  angle: getAngle(),
                  child: child,
                );
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: Image.asset(
                    AudioManager.instance.info?.coverUrl ?? "assets/disc.png",
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                  ),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AudioManager.instance.info?.title ?? "Song Name",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  AudioManager.instance.info?.desc ?? "Artist Name",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Center(
                        child: IconButton(
                            icon: const Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              AudioManager.instance.previous();
                            }),
                      ),
                      backgroundColor: Colors.cyan.withOpacity(0.3),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color.fromARGB(255, 182, 9, 29),
                                Color.fromARGB(255, 204, 80, 90),
                              ]),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: IconButton(
                          onPressed: () async {
                            AudioManager.instance.playOrPause();
                          },
                          padding: const EdgeInsets.all(0.0),
                          icon: Icon(
                            AudioManager.instance.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.cyan.withOpacity(0.3),
                      child: Center(
                        child: IconButton(
                            icon: const Icon(
                              Icons.skip_next,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              AudioManager.instance.next();
                            }),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                _duration != null
                    ? Text(
                        _formatDuration(_duration!, _position!),
                        style: const TextStyle(
                            fontSize: 16.0, color: Colors.white),
                      )
                    : const SizedBox(),
              ],
            ),
          )
        ],
      );

  String _formatDuration(Duration ds, Duration p) {
  
    if (ds == null || p == null) return "--:--";
    var d = ds - p;
    int minute = d.inMinutes;
    int second = (d.inSeconds > 60) ? (d.inSeconds % 60) : d.inSeconds;
    String format = ((minute < 10) ? "0$minute" : "$minute") +
        ":" +
        ((second < 10) ? "0$second" : "$second");
    print(p.inSeconds);
    print(ds.inSeconds);
    _sliderValue = (p.inSeconds / ds.inSeconds);
    return "Time Left: $format";
  }

  void setupAudio() {
    List<AudioInfo> _list = [];
    for (var item in list) {
      _list.add(AudioInfo(item["url"]!,
          title: item["title"]!,
          desc: item["desc"]!,
          coverUrl: item["coverUrl"]!));
    }

    AudioManager.instance.audioList = _list;
    AudioManager.instance.intercepter = true;
    AudioManager.instance.play(auto: true);

    AudioManager.instance.onEvents((events, args) {
      switch (events) {
        case AudioManagerEvents.start:
          print(
              "start load data callback, curIndex is ${AudioManager.instance.curIndex}");
          _position = AudioManager.instance.position;
          _duration = AudioManager.instance.duration;
          setState(() {});
          break;
        case AudioManagerEvents.ready:
          print("ready to play");
          _position = AudioManager.instance.position;
          _duration = AudioManager.instance.duration;
          setState(() {});

          break;
        case AudioManagerEvents.seekComplete:
          _position = AudioManager.instance.position;
          setState(() {});
          print("seek event is completed. position is [$args]/ms");
          break;
        case AudioManagerEvents.buffering:
          print("buffering $args");
          break;
        case AudioManagerEvents.playstatus:
          isPlaying = AudioManager.instance.isPlaying;
          setState(() {});
          break;
        case AudioManagerEvents.timeupdate:
          _position = AudioManager.instance.position;
          setState(() {});
          AudioManager.instance.updateLrc(args["position"].toString());
          break;
        case AudioManagerEvents.error:
          setState(() {});
          break;
        case AudioManagerEvents.ended:
          AudioManager.instance.next();
          break;
        case AudioManagerEvents.volumeChange:
          setState(() {});
          break;
        default:
          break;
      }
    });
  }
}

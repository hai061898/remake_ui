import 'package:flutter/material.dart';
import 'package:re_ui/video/video_player/widgets/card_video.dart';
import 'package:re_ui/video/video_player/widgets/video_container.dart';

class HomeVideoPlay extends StatefulWidget {
  const HomeVideoPlay({Key? key}) : super(key: key);

  @override
  State<HomeVideoPlay> createState() => _HomeVideoPlayState();
}

class _HomeVideoPlayState extends State<HomeVideoPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A1D37),
      appBar: AppBar(
        elevation: 10.0,
        shadowColor: Colors.white24,
        backgroundColor: const Color(0xff0A1D37),
        title: const Text(
          "Video Play",
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/logo/logo.png"))),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Favourites",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                BuildContainer(
                  title: "World of Warcraft",
                  thumb: "assets/img/w1.jpg",
                  videoUrl:
                      "assets/video/World of Warcraft_ Battle for Azeroth Cinematic Trailer.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "StarCraft II",
                  thumb: "assets/img/w2.jpg",
                  videoUrl:
                      "assets/video/StarCraft II_ Heart of the Swarm Opening Cinematic.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "World of Warcraft",
                  thumb: "assets/img/bg1.jpg",
                  videoUrl:
                      "assets/video/World of Warcraft_ Battle for Azeroth Cinematic Trailer.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "Total War",
                  thumb: "assets/img/bg1.jpg",
                  videoUrl:
                      "assets/video/A Covenant with Chaos _ Total War_ WARHAMMER III.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "StarCraft II",
                  thumb: "assets/img/1.jpg",
                  videoUrl:
                      "assets/video/StarCraft II_ Legacy of the Void Opening Cinematic.mp4",
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Videos",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          const CardVideo(
            title: "Video Game",
            thumb: "assets/img/bg3.jpg",
            videoUrl: "assets/video/StarCraft II_ Legacy of the Void Opening Cinematic.mp4",
            title2: "Video Game",
            thumb2: "assets/img/bg4.jpg",
            videoUrl2: "assets/video/A Covenant with Chaos _ Total War_ WARHAMMER III.mp4",
          ),
          const CardVideo(
            title: "Video Game",
            thumb: "assets/img/bg.jpg",
            videoUrl: "assets/video/StarCraft II_ Heart of the Swarm Opening Cinematic.mp4",
            title2: "Video Game",
            thumb2: "assets/img/bg6.jpg",
            videoUrl2: "assets/video/StarCraft II_ Heart of the Swarm Opening Cinematic.mp4",
          ),
        
        ],
      ),
    );
  }
}

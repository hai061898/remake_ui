import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  final String? videoUrl;
  final String? title;

  const VideoScreen({Key? key, this.videoUrl, this.title}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController? controller;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(
      widget.videoUrl!,
    )
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller!.play());

    chewieController = ChewieController(
      videoPlayerController: controller!,
      autoInitialize: true,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
    chewieController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A1D37),
      body: controller!.value.isInitialized
          ? Chewie(
              controller: chewieController!,
            )
          : const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
    );
  }
}

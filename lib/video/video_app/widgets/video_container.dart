import 'package:flutter/material.dart';
import 'package:re_ui/video/video_app/screens/video_page.dart';


class BuildContainer extends StatelessWidget {
  final String? title;
  final String? thumb;
  final String? videoUrl;

  const BuildContainer({
    Key? key,
    this.title,
    this.thumb,
    this.videoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoScreen(
              videoUrl: videoUrl,
              title: title,
            ),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 150.0,
            height: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffDFEEEA),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(thumb!),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white38,
                  offset: Offset(0, 1),
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
          Positioned(
              child: Container(
            child: const Icon(Icons.play_arrow, color: Colors.white),
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black26.withOpacity(0.5),
            ),
          )),
          Positioned(
              left: 5.0,
              bottom: 5.0,
              child: Text(
                title!,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )),
        ],
      ),
    );
  }
}

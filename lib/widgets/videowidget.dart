
import 'package:deeplink/screens/videoplayer.dart';
import 'package:flutter/material.dart';

class VideoPostWidget extends StatelessWidget {
  final String title;
  final String videoThumbnail;
  final String videoUrl;
  final VoidCallback ontap;

  const VideoPostWidget({
    super.key,
    required this.title,
    required this.videoThumbnail,
    required this.videoUrl,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPlayerScreen(videoAsset: videoUrl),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(videoThumbnail),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: InkWell(
                  onTap: ontap,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Share",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.share),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

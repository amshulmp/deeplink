import 'package:deeplink/data/data.dart';
import 'package:deeplink/widgets/videowidget.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class VideoPosts extends StatelessWidget {
  const VideoPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
       if (posts[index].type=="video") {
           return VideoPostWidget(
          videoUrl: posts[index].content,
          title: posts[index].title,
          videoThumbnail: posts[index].thumbnail,
          ontap: () {
              Share.share("Check out this post: https://amshuldeeplink.web.app/?code=$index");
          },
        );
       }
       else{
        return const SizedBox.shrink();
       }
      },
    );
  }
}

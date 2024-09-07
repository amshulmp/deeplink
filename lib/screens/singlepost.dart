import 'package:deeplink/widgets/imagepost.dart';
import 'package:deeplink/widgets/textwidget.dart';
import 'package:deeplink/widgets/videowidget.dart';
import 'package:flutter/material.dart';
import 'package:deeplink/data/data.dart';
import 'package:share_plus/share_plus.dart';

class SinglePost extends StatelessWidget {
  final int index;
  const SinglePost({super.key, required this.index});

  @override
  Widget build(BuildContext context) {


   
    final post = posts[index];
    
  
    switch (post.type) {
      case "text":
        return Center(
          child: Scaffold(
            body: Center(
              child: TextPostWidget(
                content: post.content,
                title: post.title,
                ontap: () {
                  Share.share("Check out this post: https://amshuldeeplink.web.app/?code=$index");
                },
              ),
            ),
          ),
        );
      case "video":
        return Center(
          child: Scaffold(
            body: Center(
              child: VideoPostWidget(
                videoUrl: post.content,
                title: post.title,
                videoThumbnail: post.thumbnail,
                ontap: () {
                  Share.share("Check out this post: https://amshuldeeplink.web.app/?code=$index");
                },
              ),
            ),
          ),
        );
      case "image":
        return Center(
          child: Scaffold(
            body: Center(
              child: ImagePostWidget(
                img: post.content,
                title: post.title,
                ontap: () {
                  Share.share("Check out this post: https://amshuldeeplink.web.app/?code=$index");
                },
              ),
            ),
          ),
        );
      default:
        return const Center(child: Text('Unsupported post type.'));
    }
  }
}

import 'package:deeplink/data/data.dart';
import 'package:deeplink/widgets/imagepost.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ImagePosts extends StatelessWidget {
  const ImagePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        
        if (posts[index].type == "image") {
          return ImagePostWidget(
            img: posts[index].content,
            title: posts[index].title,
            ontap: () {
              Share.share("Check out this post: https://amshuldeeplink.web.app/?code=$index");
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

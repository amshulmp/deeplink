import 'package:deeplink/data/data.dart';
import 'package:deeplink/widgets/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class TextPosts extends StatelessWidget {
  const TextPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {

        if (posts[index].type == "text") {

          return TextPostWidget(
            content: posts[index].content,
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

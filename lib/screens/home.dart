
import 'package:deeplink/screens/image.dart';
import 'package:deeplink/screens/text.dart';
import 'package:deeplink/screens/video.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.image), text: 'Images'),
              Tab(icon: Icon(Icons.text_fields), text: 'Text'),
              Tab(icon: Icon(Icons.video_library), text: 'Videos'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [ImagePosts(), TextPosts(), VideoPosts()],
        ),
      ),
    );
  }
}

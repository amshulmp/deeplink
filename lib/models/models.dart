class PostModel {
  final String type;
  final String title;
  final String content;
 final  String thumbnail;
  PostModel({
    required this.type,
    required this.title,
    required this.content,
    this.thumbnail="",
  });
}




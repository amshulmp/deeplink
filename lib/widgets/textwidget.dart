import 'package:flutter/material.dart';

class TextPostWidget extends StatelessWidget {
  final String content;
  final String title;
  final VoidCallback ontap;
  const TextPostWidget({
    super.key,
    required this.content,
    required this.title,
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
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
             Text(
                content,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
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
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.share)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

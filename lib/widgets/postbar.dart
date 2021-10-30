import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 50,
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/user/username.jpg'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "What's on your mind ?",
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
          ),
          const SizedBox(
            height: 60,
            child: VerticalDivider(
              color: Colors.black38,
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.photo_album_outlined),
              ),
              const Text('Photo')
            ],
          ),
        ],
      ),
    );
  }
}

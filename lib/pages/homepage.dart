import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/widgets/menubar.dart';
import 'package:flutter_facebook_ui/widgets/post.dart';
import 'package:flutter_facebook_ui/widgets/postbar.dart';
import 'package:flutter_facebook_ui/widgets/storybar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView(
        children: const [
          PostBar(),
          Divider(thickness: 1, color: Colors.black12),
          MenuBar(),
          Divider(thickness: 1, color: Colors.black12),
          StoryBar(),
          Divider(thickness: 1, color: Colors.black12),
          Post(),
        ],
      ),
    );
  }
}

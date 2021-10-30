import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/widgets/menubar.dart';
import 'package:flutter_facebook_ui/widgets/post.dart';
import 'package:flutter_facebook_ui/widgets/postbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Sakuna',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 255,
            width: 400,
            child: Stack(
              fit: StackFit.expand,
              children: [
                GestureDetector(
                  onTap: () => {},
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 400,
                        margin: const EdgeInsets.only(top: 10.0),
                        child: const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image(
                            image: AssetImage('images/post/back.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  bottom: 10.0,
                  left: 140.0,
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      child: Image(
                          image: AssetImage('images/user/username.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Sakuna',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: Row(
                    children: const [
                      Icon(Icons.add_circle),
                      Text('Add to Story'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Row(
                    children: const [
                      Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                      Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[400],
                  ),
                ),
                IconButton(
                    onPressed: () => {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: const [
                    Icon(Icons.book),
                    SizedBox(width: 8),
                    Text("Kyoto Prefectural Jujutsu High School",
                        style: TextStyle(fontSize: 16, color: Colors.black))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: const [
                    Icon(Icons.favorite),
                    SizedBox(width: 8),
                    Text("Single",
                        style: TextStyle(fontSize: 16, color: Colors.black))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: const [
                    Icon(Icons.info),
                    SizedBox(width: 8),
                    Text("About",
                        style: TextStyle(fontSize: 16, color: Colors.black))
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Friends',
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'Find Friends',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black38,
          ),
          const PostBar(),
          const Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          const MenuBar(),
          const Divider(
            thickness: 1,
            color: Colors.black38,
          ),
          const Post(),
        ],
      ),
    );
  }
}

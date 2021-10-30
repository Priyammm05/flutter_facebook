import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/pages/friends_page.dart';
import 'package:flutter_facebook_ui/pages/market_page.dart';
import 'package:flutter_facebook_ui/pages/message_page.dart';
import 'package:flutter_facebook_ui/pages/profile_page.dart';
import 'package:flutter_facebook_ui/pages/video_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const Text(
                    'Menu',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  Container(
                    child: IconButton(
                        icon: const Icon(Icons.search),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          
                        }),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage('images/user/username.jpg'),
                  ),
                  title: const Text(
                    'Sakuna',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('View your Profile'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    ),
                  },
                ),
                const Divider(thickness: 1, color: Colors.black12),
                ListTile(
                  leading: const Icon(
                    Icons.coronavirus_rounded,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Covid-19 Information Center',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  title: const Text(
                    'Messages',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // print('message tapped 1'),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const MessagePage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.group,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Groups',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.shopping_bag,
                    color: Colors.blueAccent,
                  ),
                  title: const Text(
                    'Marketplace',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // print('Marketplace Tapped'),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const MarketPage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Colors.green,
                  ),
                  title: const Text(
                    'Friends',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // print('Friends Tapped'),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const FriendsPage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.video_label,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Videos',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // print('Videos Tapped'),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const VideoPage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.pages,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Pages',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.privacy_tip,
                    color: Colors.blueGrey,
                  ),
                  title: const Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.help,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Help Center',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.book,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'About',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

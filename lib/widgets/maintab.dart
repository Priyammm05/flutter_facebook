import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_ui/pages/friends_page.dart';
import 'package:flutter_facebook_ui/pages/homepage.dart';
import 'package:flutter_facebook_ui/pages/market_page.dart';
import 'package:flutter_facebook_ui/pages/message_page.dart';
import 'package:flutter_facebook_ui/pages/notifications_page.dart';
import 'package:flutter_facebook_ui/pages/video_page.dart';
import 'package:flutter_facebook_ui/widgets/mydrawer.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> topTabs = [
    const Tab(icon: Icon(Icons.home_outlined)),
    const Tab(icon: Icon(Icons.people_outlined)),
    const Tab(icon: Icon(Icons.message_outlined)),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -20, end: -5),
        badgeContent: const Text(
          '7',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        child: const Icon(Icons.notifications_outlined),
      ),
    ),
    const Tab(icon: Icon(Icons.video_library_outlined)),
    const Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: topTabs.length,
      initialIndex: 0,
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
  }

  Future<bool> _onWillPop() async {
    // ignore: avoid_print
    print('back');

    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(const Duration(milliseconds: 20), () {
      _tabController?.index = 0;
    });

    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
              fontFamily: 'Klavika',
              fontSize: 34,
              color: Colors.blue[700],
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: const Icon(Icons.menu, color: Colors.black),
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: SizedBox(
          width: MediaQuery.of(context).size.width * 1.0,
          child: const MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificationsPage(),
            VideoPage(),
            MarketPage(),
          ],
        ),
      ),
    );
  }
}

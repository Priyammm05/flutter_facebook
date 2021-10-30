import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/notification_model.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: IconButton(
                  icon: const Icon(Icons.check_circle),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  tooltip: 'Mark all Notification as read',
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
        const Divider(thickness: 1, color: Colors.black26),
        Expanded(
          child: ListView.builder(
            itemCount: notificationData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(notificationData[i].avatar),
                  ),
                  title: Text(
                    notificationData[i].name +
                        ' ' +
                        notificationData[i].description,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(notificationData[i].time),
                  trailing: IconButton(
                    iconSize: 28,
                    onPressed: () => {},
                    icon: const Icon(Icons.more_vert_outlined),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

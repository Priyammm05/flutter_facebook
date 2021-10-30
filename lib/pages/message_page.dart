import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/message_model.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
                'Messages',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                        icon: const Icon(Icons.message),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        color: Colors.green,
                        onPressed: () {}),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: IconButton(
                        icon: const Icon(Icons.settings),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {}),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                ],
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: messageData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(messageData[i].avatar),
                  ),
                  title: Text(
                    messageData[i].name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(messageData[i].time),
                  trailing: IconButton(
                    iconSize: 20,
                    color: Colors.green,
                    onPressed: () => {},
                    icon: messageData[i].status,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

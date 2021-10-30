import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/video_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;
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
                'Videos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Tooltip(
                  message: 'Play Video Automatically',
                  child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      }),
                ),
              ),
            ],
          ),
        ),
        const Divider(thickness: 1, color: Colors.black26),
        Expanded(
          child: ListView.builder(
            itemCount: videoData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      iconSize: 50,
                      onPressed: videoData[i].avatarOnPressed,
                      icon: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage(videoData[i].avatarImage),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                videoData[i].name,
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () => {},
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10.0,
                            children: [
                              Text(
                                videoData[i].time,
                                style: const TextStyle(fontSize: 18.0),
                              ),
                              const Icon(Icons.public),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      iconSize: 30,
                      onPressed: videoData[i].moreOnPressed,
                      icon: const Icon(Icons.more_horiz_outlined),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YoutubePlayerControllerProvider(
                        // Provides controller to all the widget below it.
                        controller: YoutubePlayerController(
                          initialVideoId: videoData[i].videoPostLink ?? "",
                          params: const YoutubePlayerParams(
                            autoPlay: false,
                            mute: false,
                            showControls: true,
                            showFullscreenButton: true,
                          ),
                        ),
                        child: const YoutubePlayerIFrame(
                          aspectRatio: 16 / 9,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          videoData[i].videoPostTitle,
                          style: const TextStyle(
                              fontSize: 18.0, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.thumb_up_alt_outlined),
                          onPressed: videoData[i].likeOnPressed,
                        ),
                        const Text('12k', style: TextStyle(fontSize: 18.0)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.message_outlined),
                          onPressed: videoData[i].commentOnPressed,
                        ),
                        const Text('2k', style: TextStyle(fontSize: 18.0)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.share_outlined),
                          onPressed: videoData[i].shareOnPressed,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

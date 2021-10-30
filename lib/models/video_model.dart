import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.videoPostTitle,
    required this.videoPostLink,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<VideoModel> videoData = [
  VideoModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u1.jpg",
    name: 'Net Ninja',
    time: 'Just Now',
    moreOnPressed: () {},
    videoPostTitle:
        'If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text.',
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=1"),
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  VideoModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u2.jpg",
    name: 'Academind',
    time: '8 min ago',
    moreOnPressed: () {},
    videoPostTitle:
        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.',
    videoPostLink: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=x0uinJvhNxI&t=401s'),
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
  VideoModel(
    avatarOnPressed: () {},
    avatarImage: "images/user/u3.jpg",
    name: 'Geeky Shows',
    time: '8 min ago',
    moreOnPressed: () {},
    videoPostTitle:
        'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.',
    videoPostLink: YoutubePlayer.convertUrlToId(
        'https://www.youtube.com/watch?v=INLr6Pzej6M'),
    likeOnPressed: () {},
    commentOnPressed: () {},
    shareOnPressed: () {},
  ),
];

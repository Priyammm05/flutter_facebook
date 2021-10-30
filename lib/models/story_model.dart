import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
    userName: "Mai-san",
    image: "images/story/s1.jpg",
    onTap: () {},
  ),
  StoryModel(
    userName: "Rem",
    image: "images/story/s2.jpg",
    onTap: () {},
  ),
  StoryModel(
    userName: "Makise",
    image: "images/story/s3.jpg",
    onTap: () {},
  ),
  StoryModel(
    userName: "Asuna",
    image: "images/story/s4.jpg",
    onTap: () {},
  ),
  StoryModel(
    userName: "Nezuko",
    image: "images/story/s5.jpg",
    onTap: () {},
  ),
];

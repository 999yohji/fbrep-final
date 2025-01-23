import 'package:flutter/material.dart';
import '../widgets/post_card.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({super.key});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // Post 1
        NewsFeedCard(
          userProfilePicture: 'assets/images/profile_pictures/bread.jpg',
          userName: 'John Doe',
          datePosted: 'December 2',
          hasImage: false,
          imageSource: '',
          postContent: 'Guys, bayad na ba kayo sa tuition?',
          likeCount: '30k',
        ),

        // Post 2
        NewsFeedCard(
          userProfilePicture: 'assets/images/profile_pictures/bulldawg.png',
          userName: 'Jane Smith',
          datePosted: 'Kanina lang',
          hasImage: true,
          imageSource: 'assets/images/post_pictures/nu.jpg',
          postContent: 'panalo nanaman nu sa cdc... ez ba ez hahaha',
          likeCount: '600k',
        ),

        // Post 3
        NewsFeedCard(
          userProfilePicture: 'assets/images/profile_pictures/sonny.jpg',
          userName: 'Flood Myth',
          datePosted: 'October 1',
          hasImage: true,
          imageSource: 'assets/images/post_pictures/pomegranate.jpg',
          postContent: 'A reminder to the people that might need to hear this.',
          likeCount: '60',
        ),

        // Post 4
        NewsFeedCard(
          userProfilePicture: 'assets/images/profile_pictures/namelessking.jpg',
          userName: 'Yohji Angsakitmona',
          datePosted: 'August 31',
          hasImage: true,
          imageSource: 'assets/images/post_pictures/rico.png',
          postContent: 'grabe ka maris',
          likeCount: '31',
        ),

        // Post 5
        NewsFeedCard(
          userProfilePicture: 'assets/images/profile_pictures/faker.png',
          userName: 'Faker Delos Santos',
          datePosted: 'December 1',
          hasImage: false,
          imageSource: '',
          postContent: '그런 제가 선배 마음에 탕탕 후루후루',
          likeCount: '401k',
        ),

        // Post 6
        NewsFeedCard(
          userProfilePicture: 'assets/images/profile_pictures/juan.jpg',
          userName: 'Juan Dela Cruz',
          datePosted: 'November 2',
          hasImage: true,
          imageSource: 'assets/images/post_pictures/fakermygoat.jpg',
          postContent: 'FAKER IS MY GOAT RAAAHHHHHHH',
          likeCount: '10k',
        ),
      ],
    );
  }
}

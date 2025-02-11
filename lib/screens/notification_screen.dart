import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: const SingleChildScrollView(
        child: Column(
          children: [
            // Notif 1
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/malenia.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'December TWO?!',
              numOfLikes: 12,
            ),
            Divider(),

            // Notif 2
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/usahana.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'January 32nd',
              numOfLikes: 123,
            ),
            Divider(),

            // Notif 3
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/crummy.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'February 21st',
              numOfLikes: 12,
            ),
            Divider(),

            // Notif 4
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/thugger.png',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'October 6nd',
              numOfLikes: 123,
            ),
            Divider(),

            // Notif 5
            notif.Notification(
              profileImageUrl:
                  'assets/images/profile_pictures/martinlations.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'Kanina Lang',
              numOfLikes: 334,
            ),
            Divider(),

            // Notif 6
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/nettspend.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'June 8th',
              numOfLikes: 223,
            ),
            Divider(),

            // Notif 7
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/zeke.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'August 2',
              numOfLikes: 566,
            ),
            Divider(),

            // Notif 8
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/luweezy.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'June 6',
              numOfLikes: 246,
            ),
            Divider(),

            // Notif 9
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/sara.png',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'November 9',
              numOfLikes: 311,
            ),
            Divider(),

            // Notif 10
            notif.Notification(
              // lotso pocchaco kenma da cat
              profileImageUrl: 'assets/images/profile_pictures/alab.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'March 6',
              numOfLikes: 153,
            ),
            Divider(),

            // Notif 11
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/drogba.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'May 20',
              numOfLikes: 779,
            ),
            Divider(),

            // Notif 12
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/lotso.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'May 5',
              numOfLikes: 1113,
            ),
            Divider(),

            // Notif 13
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/pochacco.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'April 13',
              numOfLikes: 123,
            ),
            Divider(),

            // Notif 14
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/kenma.jpg',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'July 4',
              numOfLikes: 333,
            ),
            Divider(),

            // Notif 15
            notif.Notification(
              profileImageUrl: 'assets/images/profile_pictures/faker.png',
              name: 'Test',
              post: 'Post',
              description: 'Description',
              date: 'December 3',
              numOfLikes: 134,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

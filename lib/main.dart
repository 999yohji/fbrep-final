import 'package:facebook_replication_alcantara/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/newsfeed_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FacebookReplicationAlcantara());
}

class FacebookReplicationAlcantara extends StatelessWidget {
  const FacebookReplicationAlcantara({super.key});

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Facebook Replication',
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => const NewsFeedScreen(),
            '/home': (context) => const HomeScreen(),
            '/profile': (context) => const ProfileScreen(),
          },
        );
      },
    );
  }
}

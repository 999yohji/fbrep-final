import 'package:facebook_replication_alcantara/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/notification_screen.dart';
import '../constants.dart';
import '../screens/newsfeed_screen.dart';
import '../widgets/custom_font.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  String username = '';

  List<String> _titles = ['RatBook', 'Notifications', 'User Name'];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args = ModalRoute.of(context)?.settings.arguments as String?;
    if (args != null) {
      setState(() {
        username = args;
        _titles[2] = username;
      });
    }
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'RatBook';
      case 1:
        return 'Notifications';
      case 2:
        return username;
      default:
        return 'RatBook';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xFF1A0926), Color(0xFF351A3B)]),
          ),
        ),
        shadowColor: FB_TEXT_COLOR_WHITE,
        elevation: 2,
        title: CustomFont(
          text: _getTitle(_selectedIndex),
          fontSize: ScreenUtil().setSp(25),
          color: FB_PRIMARY,
          fontFamily: 'Klavika',
        ),
      ),
      body: Container(
        color: FB_PRIMARY,
        child: PageView(
          controller: _pageController,
          children: const <Widget>[
            NewsFeedScreen(),
            NotificationScreen(),
            ProfileScreen(),
          ],
          onPageChanged: (page) {
            setState(
              () {
                _selectedIndex = page;
              },
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Color(0xFF1A0926), Color(0xFF351A3B)],
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onTappedBar,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Gianncarlo Alcantara')
          ],
          selectedItemColor: FB_PRIMARY,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }

  void _onTappedBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }
}

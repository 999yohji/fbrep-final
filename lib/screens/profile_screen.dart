import '/constants.dart';
import '/widgets/custom_button.dart';
import '/widgets/custom_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/post_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String username = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args = ModalRoute.of(context)?.settings.arguments as String?;
    if (args != null) {
      setState(() {
        username = args;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/profile_pictures/OIP.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: ScreenUtil().setWidth(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              'assets/images/profile_pictures/radagon.jpg'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.camera_alt,
                              size: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(55)),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: username.isEmpty ? 'User Name' : username,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(20),
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(5),
                    ),
                    Row(
                      children: [
                        CustomFont(
                          text: '300k',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(10),
                        ),
                        CustomFont(
                          text: 'followers',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(5),
                        ),
                        Icon(
                          Icons.circle,
                          size: ScreenUtil().setSp(5),
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(5),
                        ),
                        CustomFont(
                          text: '999',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(10),
                        ),
                        CustomFont(
                          text: 'following',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(10),
                    ),
                    Row(
                      children: [
                        CustomButton(
                          buttonName: 'Follow',
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(10),
                        ),
                        CustomButton(
                          buttonName: 'Message',
                          onPressed: () {},
                          buttonType: 'outlined',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              TabBar(
                indicatorColor: FB_DARK_PRIMARY,
                tabs: [
                  Tab(
                    child: CustomFont(
                      text: 'Posts',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'About',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'Photos',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setSp(2500),
                child: TabBarView(
                  children: [
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Post 1
                          /*  NewsFeedCard(
                            userProfilePicture:
                                'assets/images/profile_pictures/bread.jpg',
                            userName: 'John Doe',
                            datePosted: 'December 2',
                            hasImage: false,
                            imageSource: '',
                            postContent: 'Guys, bayad na ba kayo sa tuition?',
                            numOfLikes: 30000,
                          ),

                          // Post 2
                          NewsFeedCard(
                            userProfilePicture:
                                'assets/images/profile_pictures/bulldawg.png',
                            userName: 'Jane Smith',
                            datePosted: 'Kanina lang',
                            hasImage: true,
                            imageSource: 'assets/images/post_pictures/nu.jpg',
                            postContent:
                                'panalo nanaman nu sa cdc... ez ba ez hahaha',
                            numOfLikes: 600000,
                          ),

                          // Post 3
                          NewsFeedCard(
                            userProfilePicture:
                                'assets/images/profile_pictures/sonny.jpg',
                            userName: 'Flood Myth',
                            datePosted: 'October 1',
                            hasImage: true,
                            imageSource:
                                'assets/images/post_pictures/pomegranate.jpg',
                            postContent:
                                'A reminder to the people that might need to hear this.',
                            numOfLikes: 70,
                          ),

                          // Post 4
                          NewsFeedCard(
                            userProfilePicture:
                                'assets/images/profile_pictures/namelessking.jpg',
                            userName: 'Yohji Angsakitmona',
                            datePosted: 'August 31',
                            hasImage: true,
                            imageSource: 'assets/images/post_pictures/rico.png',
                            postContent: 'grabe ka maris',
                            numOfLikes: 31,
                          ),

                          // Post 5
                          NewsFeedCard(
                            userProfilePicture:
                                'assets/images/profile_pictures/faker.png',
                            userName: 'Faker Delos Santos',
                            datePosted: 'December 1',
                            hasImage: false,
                            imageSource: '',
                            postContent: '그런 제가 선배 마음에 탕탕 후루후루',
                            numOfLikes: 401,
                          ),

                          // Post 6
                          NewsFeedCard(
                            userProfilePicture:
                                'assets/images/profile_pictures/juan.jpg',
                            userName: 'Juan Dela Cruz',
                            datePosted: 'November 2',
                            hasImage: true,
                            imageSource:
                                'assets/images/post_pictures/fakermygoat.jpg',
                            postContent: 'FAKER IS MY GOAT RAAAHHHHHHH',
                            numOfLikes: 1033,
                          ), */
                        ]),
                    Column(children: [
                      CustomFont(
                        text: 'Too swagged out to think.',
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                      )
                    ]),
                    // ... your Photos Section
                    SingleChildScrollView(
                      child: GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: [
                          // Replace with your image widgets
                          Image.asset(
                              'assets/images/profile_pictures/drogba.jpg'),
                          Image.asset(
                              'assets/images/profile_pictures/faker.png'),
                          Image.asset(
                              'assets/images/profile_pictures/juan.jpg'),
                          Image.asset(
                              'assets/images/profile_pictures/kenma.jpg'),
                          Image.asset(
                              'assets/images/profile_pictures/thugger.png'),
                          Image.asset(
                              'assets/images/profile_pictures/luweezy.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

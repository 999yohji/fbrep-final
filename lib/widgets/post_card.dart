import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_font.dart';

class NewsFeedCard extends StatelessWidget {
  final String userProfilePicture;
  final String userName;
  final String datePosted;
  final bool hasImage;
  final String imageSource;
  final String postContent;
  final String likeCount;

  const NewsFeedCard(
      {super.key,
      required this.userProfilePicture,
      required this.userName,
      required this.datePosted,
      required this.hasImage,
      required this.imageSource,
      required this.postContent,
      required this.likeCount});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // joined profile picture with name in a single row section
                CircleAvatar(
                  backgroundImage: AssetImage(userProfilePicture),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomFont(
                      text: datePosted,
                      fontSize: ScreenUtil().setSp(10),
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
            if (hasImage) Image.asset(imageSource) else const SizedBox.shrink(),
            SizedBox(height: ScreenUtil().setSp(5)),
            CustomFont(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setSp(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomFont(
                    text: likeCount,
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomFont(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomFont(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: FB_DARK_PRIMARY,
                  size: ScreenUtil().setSp(20),
                ),
                SizedBox(width: ScreenUtil().setSp(10)),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write a comment...",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setSp(70)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(ScreenUtil().setSp(15)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 221, 221, 221),
                    ),
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(14),
                    ), // Font size
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_font.dart';

class Notification extends StatelessWidget {
  const Notification(
      {super.key,
      required this.notifProfilePicture,
      required this.name,
      required this.post,
      required this.description});

  final String notifProfilePicture;
  final String name;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CircleAvatar(
          backgroundImage: AssetImage(notifProfilePicture),
        ),
        SizedBox(
          width: ScreenUtil().setSp(10),
        ),
        /* Expanded(
            child: */
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomFont(
            text: name,
            fontSize: ScreenUtil().setSp(20),
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
          CustomFont(
            // i hate flexibles/expanded widgets so much, had to waste an hour
            // trying to debug widget size only to arrive at this solution
            text: post.length > 40 ? '${post.substring(0, 40)}...' : post,
            fontSize: ScreenUtil().setSp(13),
            color: Colors.black,
          ),
          CustomFont(
            text: description,
            fontSize: ScreenUtil().setSp(12),
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ]),
        const Spacer(),
        const Icon(Icons.more_horiz),
      ]),
    );
  }
}

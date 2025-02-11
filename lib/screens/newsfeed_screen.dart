import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_font.dart';
import '../widgets/post_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta',
          numOfLikes: 2000,
          date: 'October 11',
          imageUrl:
              'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpeg?width=1200&format=pjpg&optimize=medium',
          profileImageUrl:
              'https://image.petmd.com/files/inline-images/shiba-inu-black-and-tan-colors.jpg?VersionId=pLq84BEOjdMjXeDCUJJJLFPuIWYsVMUU',
        ),
        Row(
          // container with padding, sizedbox(10) on top, customfont, sizedbox(10) on bottom
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: CustomFont(
                  text: 'Advertisement',
                  textAlign: TextAlign.center,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
              enableInfiniteScroll: false, height: 308.h, padEnds: false),
          items: carouselItems(),
        ),
        PostCard(
          userName: 'Roben Juanatas',
          postContent: 'Kicking off the holiday season with ICpEP-NCR!',
          numOfLikes: 200,
          date: 'December 2',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: CustomFont(
                  text: 'Advertisement',
                  textAlign: TextAlign.center,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
              enableInfiniteScroll: false, height: 308.h, padEnds: false),
          items: carouselItems(),
        ),
        PostCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta',
          date: 'October 11',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: CustomFont(
                  text: 'Advertisement',
                  textAlign: TextAlign.center,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
              enableInfiniteScroll: false, height: 308.h, padEnds: false),
          items: carouselItems(),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }

  List<Widget> carouselItems() {
    return [
      PostCard(
        userName: 'Cyrus Robles',
        imageUrl:
            'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpeg?width=1200&format=pjpg&optimize=medium',
        profileImageUrl:
            'https://image.petmd.com/files/inline-images/shiba-inu-black-and-tan-colors.jpg?VersionId=pLq84BEOjdMjXeDCUJJJLFPuIWYsVMUU',
        postContent: 'Kamusta',
        date: 'October 11',
        isAds: true,
        adsMarket: 'Ikaw na ito!',
      ),
      PostCard(
        userName: 'Cyrus Robles',
        imageUrl:
            'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpg?width=1200&format=pjpg&optimize=medium',
        profileImageUrl:
            'https://image.petmd.com/files/inline-images/shiba-inu-black-and-tan-colors.jpg?VersionId=pLq84BEOjdMjXeDCUJJJLFPuIWYsVMUU',
        postContent: 'Kamusta',
        date: 'October 11',
        isAds: true,
        adsMarket: 'Ikaw na ito!',
      ),
      PostCard(
        userName: 'Cyrus Robles',
        imageUrl:
            'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpg?width=1200&format=pjpg&optimize=medium',
        profileImageUrl:
            'https://image.petmd.com/files/inline-images/shiba-inu-black-and-tan-colors.jpg?VersionId=pLq84BEOjdMjXeDCUJJJLFPuIWYsVMUU',
        postContent: 'Kamusta',
        date: 'October 11',
        isAds: true,
        adsMarket: 'Ikaw na ito!',
      ),
      PostCard(
        userName: 'Cyrus Robles',
        imageUrl:
            'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpg?width=1200&format=pjpg&optimize=medium',
        profileImageUrl:
            'https://image.petmd.com/files/inline-images/shiba-inu-black-and-tan-colors.jpg?VersionId=pLq84BEOjdMjXeDCUJJJLFPuIWYsVMUU',
        postContent: 'Kamusta',
        date: 'October 11',
        isAds: true,
        adsMarket: 'Ikaw na ito!',
      ),
      PostCard(
        userName: 'Cyrus Robles',
        imageUrl:
            'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpg?width=1200&format=pjpg&optimize=medium',
        profileImageUrl:
            'https://image.petmd.com/files/inline-images/shiba-inu-black-and-tan-colors.jpg?VersionId=pLq84BEOjdMjXeDCUJJJLFPuIWYsVMUU',
        postContent: 'Kamusta',
        date: 'October 11',
        isAds: true,
        adsMarket: 'Ikaw na ito!',
      ),
    ];
  }
}

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
              notifProfilePicture: 'assets/images/profile_pictures/malenia.jpg',
              name: 'Malenia, Blade of Miquella',
              post: 'Where Karl Bradley at?',
              description: 'real hot girl s**t',
            ),
            Divider(),

            // Notif 2
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/usahana.jpg',
              name: 'Usahana',
              post: 'I love ballet! ^__^',
              description: 'yippieee',
            ),
            Divider(),

            // Notif 3
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/crummy.jpg',
              name: 'Kuromi',
              post: 'carti drop the album already jesus',
              description: 'WHERE\'S THE ALBUM!!!',
            ),
            Divider(),

            // Notif 4
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/thugger.png',
              name: 'Jeffrey Lamar Williams II',
              post: 'rico case dont got nun on me . shout out my lawyer brian',
              description: 'slime out!',
            ),
            Divider(),

            // Notif 5
            notif.Notification(
              notifProfilePicture:
                  'assets/images/profile_pictures/martinlations.jpg',
              name: 'Oliver Patois',
              post: 'nakadekwatro na ako dito par, san ka na boy?',
              description: 'I\'m telling you this right now.',
            ),
            Divider(),

            // Notif 6
            notif.Notification(
              notifProfilePicture:
                  'assets/images/profile_pictures/nettspend.jpg',
              name: 'Nettspend',
              post: 'shoutout 2 the philippines.',
              description: 'add me on roblox lmao',
            ),
            Divider(),

            // Notif 7
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/zeke.jpg',
              name: 'Daniel SKL Orisa',
              post: 'yall tryna hop on marvel rivals?',
              description: 'haahahahaha',
            ),
            Divider(),

            // Notif 8
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/luweezy.jpg',
              name: 'Gabby alyas Jah\'rakal',
              post: 'pagawa na kayo ng bahay sakin oh',
              description: '150 lang tf mura na to',
            ),
            Divider(),

            // Notif 9
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/sara.png',
              name: 'Sarah D. Terte',
              post: 'ako ay magsasabi ng hindi magagandang words',
              description: 'ranting lang hehe',
            ),
            Divider(),

            // Notif 10
            notif.Notification(
              // lotso pocchaco kenma da cat
              notifProfilePicture: 'assets/images/profile_pictures/alab.jpg',
              name: 'Alba Endoftheworld',
              post: 'magpa commission na kayo sakin gutom na gutom na ako',
              description: 'loveyoy',
            ),
            Divider(),

            // Notif 11
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/drogba.jpg',
              name: 'Didier Drogba',
              post: 'We made Chelsea european champions.',
              description: 'Champions of Europe 2012, Never forget!',
            ),
            Divider(),

            // Notif 12
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/lotso.jpg',
              name: 'Lotso Macapagal',
              post: 'I like cake. A lot.',
              description: 'I\'m totally not evil or anything!',
            ),
            Divider(),

            // Notif 13
            notif.Notification(
              notifProfilePicture:
                  'assets/images/profile_pictures/pochacco.jpg',
              name: 'Pochacco',
              post: 'Heehee...',
              description: ':3',
            ),
            Divider(),

            // Notif 14
            notif.Notification(
              notifProfilePicture: 'assets/images/profile_pictures/kenma.jpg',
              name: 'Kenma',
              post: 'I miss my mom and dad...',
              description: 'Watching over you two from cat heaven ! <3',
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

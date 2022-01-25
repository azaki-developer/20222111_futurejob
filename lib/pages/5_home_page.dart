import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';
import 'package:futurejob/widgets/1_card_jobs.dart';
import 'package:futurejob/widgets/2_card_post.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 24 * 2,
          left: 24,
          right: 24,
          bottom: 30,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  'Hello,',
                  style: greyRegular16,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Zaki',
                  style: blackSemiBold24,
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/picture_user.png',
              width: 62,
              height: 62,
            ),
          ],
        ),
      );
    }

    Widget body_1() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'High-Demand Jobs',
              style: blackRegular16,
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Note: Insert Job Card here
                  CardJob(
                    job: 'Website Developer',
                    imageUrl: 'assets/card_category_1.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardJob(
                    job: 'Mobile Developer',
                    imageUrl: 'assets/card_category_2.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardJob(
                    job: 'UI Designer',
                    imageUrl: 'assets/card_category_3.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardJob(
                    job: 'Copywriter',
                    imageUrl: 'assets/card_category_4.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardJob(
                    job: 'Video Editor',
                    imageUrl: 'assets/card_category_5.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget body_2() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Newest Job Vacancies',
              style: blackRegular16,
            ),
            SizedBox(
              height: 16,
            ),
            CardPost(
              job: 'Front-End Web Developer',
              imageUrl: 'assets/icon_google.png',
              company: 'Google',
            ),
            CardPost(
              job: 'UI Designer',
              imageUrl: 'assets/icon_instagram.png',
              company: 'Instagram',
            ),
            CardPost(
              job: 'Data Scientist',
              imageUrl: 'assets/icon_facebook.png',
              company: 'Meta',
            ),
          ],
        ),
      );
    }


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body_1(),
            body_2(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: greyDarkBackground,
          selectedItemColor: purpleBackground,
          currentIndex: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_1.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_2.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_3.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_4.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

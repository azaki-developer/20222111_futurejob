import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';
import 'package:futurejob/widgets/2_card_post.dart';

class CategoryPage extends StatelessWidget {
  final String job;
  final String imageUrl;
  CategoryPage({required this.job, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Note: Body
          children: [
            Stack(
              // Note: Header
              children: [
                ClipRRect(
                  child: Container(
                    width: double.infinity,
                    height: 270,
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 180,
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        job,
                        style: whiteSemiBold24,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '8,931 jobs available',
                        style: whiteRegular16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 24,
                right: 24,
                bottom: 80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Large Firms',
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
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Startups',
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
            ),
          ],
        ),
      ),
    );
  }
}

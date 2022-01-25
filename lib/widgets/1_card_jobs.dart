import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';
import 'package:futurejob/pages/6_category_page.dart';

class CardJob extends StatelessWidget {
  final String job;
  final String imageUrl;
  CardJob({required this.job, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              job: job,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
        width: 150,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 130,
            left: 16,
            bottom: 16,
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              job,
              style: whiteMedium18,
            ),
          ),
        ),
      ),
    );
  }
}

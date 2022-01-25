import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';
import 'package:futurejob/pages/7_jobdescription_page.dart';

class CardPost extends StatelessWidget {
  final String job;
  final String imageUrl;
  final String company;
  CardPost({required this.job, required this.imageUrl, required this.company});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDescriptionPage(
            ),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          SizedBox(
            width: 27,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  job,
                  style: blackMedium16,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  company,
                  style: greyRegular14,
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: greyBackground,
                  thickness: 1,
                ),
                SizedBox(
                  height: 16
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

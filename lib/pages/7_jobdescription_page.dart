import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';

class JobDescriptionPage extends StatefulWidget {
  @override
  State<JobDescriptionPage> createState() => JobDescriptionPageState();
}

class JobDescriptionPageState extends State<JobDescriptionPage> {
  // Note: Insert default button status
  bool jobIsApplied = false;
  @override
  Widget build(BuildContext context) {
    Widget cancelJob() {
      return Container(
        width: 200,
        height: 55,
        child: TextButton(
          child: Text(
            'Cancel Job Application',
            style: whiteMedium14,
          ),
          onPressed: () {
            setState(() {
              jobIsApplied = !jobIsApplied;
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: redBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
          ),
        ),
      );
    }

    Widget applyJob() {
      return Container(
        width: 200,
        height: 55,
        child: TextButton(
          child: Text(
            'Apply for This Job',
            style: whiteMedium14,
          ),
          onPressed: () {
            setState(() {
              jobIsApplied = !jobIsApplied;
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: purpleBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
          ),
        ),
      );
    }

    Widget applyNotification() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: TextButton(
          child: Text(
            'You have applied for this job and the \nrecruiter will contact you',
            style: greyRegular14,
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            setState(() {
              jobIsApplied = !jobIsApplied;
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: greyBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 24,
            right: 24,
            bottom: 80,
          ),
          child: Column(
            children: [
              // Note: Insert the user's application's nofication here
              jobIsApplied ? applyNotification() : Container(),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/icon_google.png',
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Front-End Web Developer',
                    style: blackSemiBold20,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Google, Inc. • Jakarta, Indonesia',
                    style: greyRegular14,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Note: About the Job
                  Text(
                    'About the Job',
                    style: blackMedium14,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/point.png',
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Full-time on site',
                        style: blackLight14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/point.png',
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Start at \$18,000 per month',
                        style: blackLight14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Note: Job Qualifications
                  Text(
                    'Job Qualifications',
                    style: blackMedium14,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/point.png',
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Candidate must possess at least a \nBachelor\'s Degree.',
                        style: blackLight14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/point.png',
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Be able to use Microsoft Office and Google \nbased service.',
                        style: blackLight14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/point.png',
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Have an excellent time management, \ngood at organizing things, and \nattention to details',
                        style: blackLight14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Note: Job Responsibilities
                  Text(
                    'Job Responsibilities',
                    style: blackMedium14,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/point.png',
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Initiate and promote any program, event, \ntraining, or activity.',
                        style: blackLight14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/point.png',
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Assess and anticipate the company needs \nand collaborate with other divisions.',
                        style: blackLight14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              // Note: Insert function for applying a job here
              jobIsApplied ? cancelJob() : applyJob(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Message the Recuiter',
                style: greyLight14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';
import 'package:futurejob/pages/3_signin_page.dart';
import 'package:futurejob/pages/5_home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  bool isPictureUploaded = false;
  bool validity = true;
  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    Widget withoutPicture() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isPictureUploaded = !isPictureUploaded;
            });
          },
          child: Image.asset(
            'assets/picture_upload.png',
            width: 120,
            height: 120,
          ),
        ),
      );
    }
    Widget withPicture() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isPictureUploaded = !isPictureUploaded;
            });
          },
          child: Image.asset(
            'assets/picture_show.png',
            width: 120,
            height: 120,
          ),
        ),
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24 * 2,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: greyRegular16,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Begin Your New Journey',
                style: blackSemiBold24,
              ),
              SizedBox(
                height: 50,
              ),
              // Note: Insert the Widget of Photo Uploading
              isPictureUploaded ? withPicture() : withoutPicture(),
              SizedBox(
                height: 50,
              ),
              Text(
                'First Name:',
                style: greyRegular16,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: greyBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: purpleBorderSide,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Last Name:',
                style: greyRegular16,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: greyBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: purpleBorderSide,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Email:',
                style: greyRegular16,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                style: TextStyle(
                  color: validity ? purpleBorderSide : redBorderSide,
                ),
                decoration: InputDecoration(
                  hintText: '',
                  fillColor: greyBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: validity ? purpleBorderSide : redBorderSide,
                    ),
                  ),
                ),
                controller: emailController,
                onChanged: (value) {
                  print(value);
                  bool emailValidity = EmailValidator.validate(value);
                  print(emailValidity);
                  if (emailValidity) {
                    setState(() {
                      validity = true;
                    });
                  } else {
                    setState(() {
                      validity = false;
                    });
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password:',
                style: greyRegular16,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: greyBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: purpleBorderSide,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Re-type Password:',
                style: greyRegular16,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: greyBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: purpleBorderSide,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 400,
                height: 55,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: whiteMedium14,
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: purpleBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text(
                    'Back to Sign In',
                    style: greyLight14,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

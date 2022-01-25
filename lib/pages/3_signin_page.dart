import 'package:flutter/material.dart';
import 'package:futurejob/0_theme.dart';
import 'package:futurejob/pages/4_signup_page.dart';
import 'package:futurejob/pages/5_home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  bool validity = true;

  // Note: Learn about TextEditingController
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
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
                'Sign In',
                style: greyRegular16,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Build Your Career',
                style: blackSemiBold24,
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  'assets/illustration_1.png',
                  width: 262,
                  height: 240,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Email Address:',
                style: greyRegular16,
              ),
              SizedBox(
                height: 8,
              ),
              // Note: Learn more about TextFormField
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
              // Note: Learn more about TextFormField
              TextFormField(
                style: TextStyle(
                  color: validity ? purpleBorderSide : redBorderSide,
                ),
                decoration: InputDecoration(
                  // Note: Learn about hintText
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
                    'Sign In',
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
                      context, MaterialPageRoute(
                        builder: (context) => SignUpPage()
                      ),
                    );
                  },
                  child: Text(
                    'Do not have an account? Sign Up',
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

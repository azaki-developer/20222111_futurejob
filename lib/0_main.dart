import 'package:flutter/material.dart';
import 'package:futurejob/pages/1_splash_page.dart';
import 'package:futurejob/providers/auth_provider.dart';
import 'package:futurejob/providers/user_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider()
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}

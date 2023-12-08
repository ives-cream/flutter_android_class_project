import 'package:android_class/page/social_media/auth/login_or_register.dart';
import 'package:android_class/page/social_media/page/social_media_home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SocialMediaHomePage();
          }
          // user is logged in
          else {
            return LoginOrRegister();
          }
        },
      ),
    );
  }
}

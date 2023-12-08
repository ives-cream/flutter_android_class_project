import 'package:android_class/untils/color_matching.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SocialMediaHomePage extends StatelessWidget {
  const SocialMediaHomePage({super.key});

  // logout user
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Media Home Page"),
        backgroundColor: ColorMatchings.color2_5,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: logout,
            icon: Icon(Icons.logout),
          ),
          // IconButton(
          //   onPressed: logout,
          //   icon: Icon(Icons.list),
          // ),
        ],
      ),
    );
  }
}

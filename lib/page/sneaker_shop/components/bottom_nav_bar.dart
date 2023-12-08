import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Sneaker_Shop_Navigator_bar extends StatelessWidget {
  void Function(int)? onTabChange;
  Sneaker_Shop_Navigator_bar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        // backgroundColor: ColorMatchings.color4_2,
        // not selected bottom navigator var icon's color
        color: Colors.grey[500],
        // selected bottom navigator var icon's color
        activeColor: Colors.grey[700],

        // Selected border
        tabActiveBorder: Border.all(
          width: 2,
          color: ColorMatchings.color2_3,
        ),
        // Selected background
        tabBackgroundColor: ColorMatchings.color1_1,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        gap: 8,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}

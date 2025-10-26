//import 'dart:ffi';

//import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_flutter_app/feature_box.dart';
import 'package:my_flutter_app/featured_ad_box_widget.dart';
import 'package:my_flutter_app/home_screen.dart';
import 'package:my_flutter_app/nav_item.dart';
import 'package:my_flutter_app/profile_screen.dart';
import 'package:my_flutter_app/reward_screen.dart';
import 'package:my_flutter_app/wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
      home: const MyHomePage(),
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    final ThemeData baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selctedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          NavItem(
            title: 'Home',
            icon: Icons.home_outlined,
            isSelected: selctedIndex == 0,
            onTap: () {
              setState(() {
                selctedIndex = 0;
              });
            },
          ),
          SizedBox(width: 20),
          NavItem(
            title: 'Wallet',
            icon: Icons.wallet_outlined,
            isSelected: selctedIndex == 1,
            onTap: () {
              setState(() {
                selctedIndex = 1;
              });
            },
          ),
          SizedBox(width: 20),
          NavItem(
            title: 'Reward',
            icon: Icons.wallet_giftcard,
            isSelected: selctedIndex == 2,
            onTap: () {
              setState(() {
                selctedIndex = 2;
              });
            },
          ),
          SizedBox(width: 20),
          NavItem(
            title: 'Profile',
            icon: Icons.person_2_outlined,
            isSelected: selctedIndex == 3,
            onTap: () {
              setState(() {
                selctedIndex = 3;
              });
            },
          ),
          SizedBox(width: 20),
        ],

        title: Row(
          spacing: 5,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.deepPurpleAccent,
              ),
              child: Icon(
                Icons.card_giftcard_outlined,
                size: 16,
                color: Colors.white,
              ),
            ),
            Text(
              'Reward App',
              selectionColor: Colors.white,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: IndexedStack(
        index: selctedIndex, // 0
        children: [
          HomeScreen(), // 0
          WalletScreen(), // 1
          RewardScreen(), //2
          ProfileScreen(), // 3
        ],
      ),
    );
  }
}

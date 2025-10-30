import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 800),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(30.0),
                child: Column(children: [
                  ],
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

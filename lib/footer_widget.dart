import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      // height: 400,
      width: double.maxFinite,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(10),
        color: const Color(0xff1e293b),
      ),
      child: Column(
        children: [
          Row(
            spacing: 20,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Earn rewards by watching ads and engaging with content. Redeem your points for real money through UPI or bank transfers.',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Bootstrap.twitter,
                          color: Colors.blue,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Bootstrap.facebook,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Bootstrap.instagram,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Links',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Reward',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Legal',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Terms of Service',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Cookie Policy',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              //Icon(Icons.wallet_giftcard_outlined, color: Colors.white,),
            ],
          ),
          SizedBox(height: 10),
          Divider(height: 20, color: Colors.white24),
          SizedBox(height: 10),
          Text(
            '© 2025 RewardApp. All rights reserved. Built with ❤️ by Meku.dev',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
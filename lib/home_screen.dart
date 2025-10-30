import 'package:flutter/material.dart';
import 'package:my_flutter_app/feature_box.dart';
import 'package:my_flutter_app/featured_ad_box_widget.dart';
import 'package:my_flutter_app/footer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //child:Padding(padding: const EdgeInsets.all(16.0),),
      child: Container(
        //padding: EdgeInsets.all(10),
        //color: Colors.red,
        child: Column(
          children: [
            earnRealMoney(),
            SizedBox(height: 30),
            availableToWithdrawl(),
            SizedBox(height: 20),
            // sction 2
            whyChoseRewardApp(),
            SizedBox(height: 80),
            featureAds(),

            /// 5th section
            SizedBox(height: 20),
            viewAllAds(),
            //footer
            SizedBox(height: 30),
            FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget viewAllAds() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurpleAccent,
      ),
      child: Text(
        'View All Ads -->',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget featureAds() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.grey.shade200,
      child: Column(
        children: [
          Text(
            'Featured Ads',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),

          Text(
            'Start earning with these high-paying advertisements',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: FeaturedAdBoxWidget(
                  image:
                      'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=400&h=300&fit=crop',
                  title: 'New Mobile Game Launch',
                  desc:
                      'Discover the latest adventure game with stunning graphics',
                  seconds: '30s',
                  points: '25 points',
                ),
              ),
              Expanded(
                child: FeaturedAdBoxWidget(
                  image:
                      'https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=400&h=300&fit=crop',
                  title: 'Fashion Brand Collection',
                  desc: 'Explore the newest fashion trends for this season',
                  seconds: '45s',
                  points: '35 points',
                ),
              ),
              Expanded(
                child: FeaturedAdBoxWidget(
                  image:
                      'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=400&h=300&fit=crop',
                  title: 'Food Delivery App',
                  desc: 'Order your favorite meals with exclusive discounts',
                  seconds: '20s',
                  points: '20 points',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget whyChoseRewardApp() {
    return Container(
      child: Column(
        children: [
          Text(
            'Why Choose RewardApp?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'The most trusted platform for earning money through ad engagement',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // FIRST CONTAINER
              FeatureBox(
                title: 'Instant Rewards',
                icon: Icons.mobile_friendly_outlined,
                desc: 'Earn points immediately after watching ads',
              ),
              SizedBox(
                width: 20,
              ), // 2 conatainer ke bitch me space dene ke liye sizebox use karte hai i.e. width and height
              // SECOND CONTAINER
              FeatureBox(
                title: 'Secure Payouts',
                icon: Icons.shield_outlined,
                desc: 'Safe and secure UPI and bank transfers',
              ),
              SizedBox(width: 20),

              // THIRD CONTAINER
              FeatureBox(
                title: 'Mobile Optimized',
                icon: Icons.phone_android_outlined,
                desc: 'Perfect experience on all mobile devices',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget availableToWithdrawl() {
    return Center(
      child: Card(
        elevation: 10,
        //  margin: EdgeInsets.all(30),
        color: Colors.deepPurpleAccent,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: Icon(Icons.wallet_outlined, color: Colors.white),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wallet Balance',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Available to withdraw',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.visibility_off_outlined, color: Colors.white),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '₹ 1,250.75',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Current Balance',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Icon(Icons.auto_graph_outlined, color: Colors.greenAccent),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          '₹85.50',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Earned today',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget earnRealMoney() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 130),
      decoration: BoxDecoration(color: Colors.deepPurpleAccent),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Earn Real Money',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Watching Ads',
            style: TextStyle(
              fontSize: 50,
              color: Colors.lightBlue.shade100,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Turn your spare time into cash. Watch engaging ads, earn points, and withdraw money directly to your bank account.',
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start Earning ->',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Text(
                      'View Wallet ->',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

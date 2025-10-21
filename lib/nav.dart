import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reward App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0; // for active menu item highlight

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// ✅ Custom Top Navigation Bar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
          ),
          child: Row(
            children: [
              // 🔹 App logo and name
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple.shade500,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.card_giftcard,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "RewardApp",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // 🔹 Navigation Menu Items
              buildNavItem(Icons.home, "Home", 0),
              const SizedBox(width: 20),
              buildNavItem(Icons.account_balance_wallet, "Wallet", 1),
              const SizedBox(width: 20),
              buildNavItem(Icons.card_giftcard, "Rewards", 2),
              const SizedBox(width: 20),
              buildNavItem(Icons.person_outline, "Profile", 3),
            ],
          ),
        ),
      ),

      /// ✅ Main Body Content
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Why Choose RewardApp?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'The most trusted platform for earning money through ad engagement',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            /// Reward Feature Boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildFeatureCard(
                  icon: Icons.charging_station_rounded,
                  title: "Instant Rewards",
                  desc: "Earn points immediately after watching ads",
                ),
                const SizedBox(width: 20),
                buildFeatureCard(
                  icon: Icons.shield_outlined,
                  title: "Secure Payouts",
                  desc: "Safe and secure UPI and bank transfers",
                ),
                const SizedBox(width: 20),
                buildFeatureCard(
                  icon: Icons.mobile_friendly,
                  title: "Mobile Optimized",
                  desc: "Perfect experience on all mobile devices",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 🔹 Navigation Button Builder
  Widget buildNavItem(IconData icon, String label, int index) {
    bool isActive = selectedIndex == index;
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? Colors.purple.shade50 : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isActive ? Colors.purple.shade600 : Colors.grey.shade700,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: isActive ? Colors.purple.shade600 : Colors.grey.shade800,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 🔹 Feature Card Widget
  Widget buildFeatureCard({
    required IconData icon,
    required String title,
    required String desc,
  }) {
    return Container(
      width: 280,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade200,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

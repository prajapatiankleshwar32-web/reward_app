import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/featured_ad_box_widget.dart';
import 'package:my_flutter_app/footer_widget.dart';

class RewardScreen extends StatefulWidget {
  RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  String? selectedValue = 'Apple';

  final List<String> items = ['Apple', 'Banana', 'Mango', 'Orange'];

  String? selectedtype = 'Sports';
  final List<String> categoryitem = [
    'Sports',
    'Entertainment',
    'Game',
    'Health',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Earn Rewards',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Watch ads and earn points that you can convert to real money',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: cardWidgetMethod(
                            Icons.currency_exchange_outlined,
                            "183",
                            "Total Points Available",
                            Colors.purpleAccent.withValues(alpha: 0.3),
                          ),
                        ),
                        Expanded(
                          child: cardWidgetMethod(
                            Icons.lock_clock_outlined,
                            "6",
                            "Available Ads",
                            Colors.blue.withValues(alpha: 0.3),
                          ),
                        ),
                        Expanded(
                          child: cardWidgetMethod(
                            Icons.star_border_outlined,
                            "4.7",
                            "Average Rating",
                            Colors.green.withValues(alpha: 0.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search Here',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade200,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  child: DropdownButton<String>(
                                    value: selectedValue,
                                    items:
                                        items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  child: DropdownButton<String>(
                                    value: selectedtype,
                                    items:
                                        categoryitem.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedtype = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return FeaturedAdBoxWidget(
                          image:
                              'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=400&h=300&fit=crop',
                          title: 'New Mobile Game Launch',
                          desc:
                              'Discover the latest adventure game with stunning graphics',
                          seconds: '30s',
                          points: '25 points',
                        );
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
          FooterWidget(),
        ],
      ),
    );
  }

  Card cardWidgetMethod(
    IconData icon,
    String title,
    String subtitle,
    Color color,
  ) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: color, child: Icon(icon)),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text(subtitle, style: TextStyle(fontSize: 13)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

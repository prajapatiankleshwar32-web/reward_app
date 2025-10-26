import 'package:flutter/material.dart';

class FeaturedAdBoxWidget extends StatelessWidget {
  const FeaturedAdBoxWidget({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.seconds,
    required this.points,
  });

  final String image;
  final String title;
  final String desc;
  final String seconds;
  final String points;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),

            child: Image.network(
              image,
              height: 200,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  desc,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.grey, size: 16),
                          Text(
                            seconds,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.deepPurpleAccent,
                            size: 16,
                          ),
                          Text(
                            points,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(7),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow_outlined, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Watch Ad',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_flutter_app/footer_widget.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 900),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    walletManage(),
                    SizedBox(height: 15),
                    // CARD KA USE KHATAM AB NEXT DESINGN START HOGA
                    getWalletBalance(),
                    SizedBox(height: 25),
                    upiWhithdrawl(),
                    SizedBox(height: 25),
                    transectionHistory(),
                    // NEXT DESIGN START HOGA
                  ],
                ),
              ),
            ),
          ),
          FooterWidget(),
        ],
      ),
    );
  }

  Widget getSempalContainer() {
    return Container(child: Text('REWARD PROJECT'), color: Colors.blueAccent);
  }

  Widget transectionHistory() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ROW KA USE DESIGN BANANE KLY KIYA JA RAHA HAI
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Transaction History',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [Icon(Icons.filter_alt_outlined), Text('Filter')],
                ),
              ],
            ),

            Divider(height: 40),
            // AB HUM LISTVIEW KA USE KARENGE QKI HUME EK JAISA BAHOOT SAARI DESIGN BANANE HAI
            ListView.separated(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // YE JO CIRCLEAVATAR KA USE HO RAHA HAI YE CIRCULAR DESISGN BANANE KLY KIYA GAYA HAI
                          CircleAvatar(
                            backgroundColor: Color(
                              0xff16a34a,
                            ).withValues(alpha: 0.2),
                            child: Icon(
                              Icons.south_west,
                              color: Color(0xff16a34a),
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ad viewing reward - Mobile Game',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.blueGrey,
                                      size: 15,
                                    ),

                                    Text(
                                      'Jan 15, 2025 • 10:30 AM',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '+₹25.00',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff16a34a),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 7),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xdddcfce7),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 5,
                                  ),
                                  child: Text(
                                    'completed',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                  height: 1,
                );
              },
            ),

            // Divider(thickness: 5, color: Colors.black),
          ],
        ),
      ),
    );
  }

  Column getSempalColumn() {
    return Column(
      children: [
        Text('COLUMN METHOD', style: TextStyle(fontSize: 50)),
        Icon(Icons.car_crash_outlined),
      ],
    );
  }

  Widget walletManage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wallet',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(height: 10),
        Text(
          'Manage your earnings and withdrawls',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  Widget getWalletBalance() {
    return Card(
      color: Colors.deepPurpleAccent,
      child: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(30.0),

          // YE JO COLUMN START HUA HAI O PURE CARD KA COLUMN HAI
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // YE JO ROW START HUA HAI ICON LENE KLY STAR HUA HAI
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white30.withValues(alpha: 0.2),
                    child: Icon(Icons.wallet_outlined, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    // YE JO COLUMN START HUA HAI YE ROW KE UNDAR HAI
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wallet Balance',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Available to withdraw',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_outlined, color: Colors.white),
                  ),
                ],
              ),

              // ROW KE UNDAR KA PURA DESIGN BANGAYA AB NETX LINE
              SizedBox(height: 20),
              Text(
                '₹1,250.75',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Current Balance',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),

              // AB ESKE BAAD NEW DESIGN PE KAAM HOGA CONTAINER LEKE USKO DECORATION DENGE USKE BAAD
              //CONTAINER KE UNDAR COLUMN KA USE HOGA JOKI MAIN RAHEGA ESKE UNDAR
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.auto_graph_outlined,
                          color: Colors.lightGreenAccent,
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Text(
                              '₹85.50',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Earned today',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
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

  Widget upiWhithdrawl() {
    return Row(
      children: [
        Expanded(
          child: getWithdrawMethodWidget(
            icon: Icons.phone_android_outlined,
            title: "UPI Whithdrawl",
            desc: "Instent transfer to UPI ID",
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: getWithdrawMethodWidget(
            icon: Icons.credit_card_outlined,
            title: 'Bank Transfar',
            desc: 'Transfer to bank account',
          ),
        ),
      ],
    );
  }

  Card getWithdrawMethodWidget({
    required IconData icon,
    required String title,
    required String desc,
  }) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepPurpleAccent.withValues(alpha: 0.2),
                ),
                child: Icon(icon, color: Colors.deepPurpleAccent),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(desc, style: TextStyle(fontSize: 13)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

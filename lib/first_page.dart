import 'package:flutter/material.dart';

import 'package:mobile/colors.dart';
import 'package:mobile/icons.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedindex = 0;

  List<Widget> widgets = [
    const Text("Home"),
    const Text("Home"),
    const Text("Home"),
    const Text("Home"),
  ];

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          leadingWidth: 75,
          leading: const Padding(
            padding: EdgeInsets.only(left: 15, top: 1, bottom: 1),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/amos1.jpeg"),
            ),
          ),
          title: const Column(
            children: [
              Text(
                "Good Morning",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "T.E.C.H_uma",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            Container(
              width: 80,
              height: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 25,
                    left: 50,
                    //  right: 70,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const Positioned(
                    child: Center(
                      child: Icon(Icons.notifications),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: AppColors.shadows,
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(30),
            ),
            width: 400,
            height: 140,
            child: Stack(
              children: [
                Positioned(
                  right: 40,
                  top: 20,
                  child: Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // border:
                    ),
                    child: const Center(
                      child: Text(
                        'History',
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 30,
                  left: 20,
                  child: Text(
                    "Available Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 40,
                  left: 20,
                  child: Text(
                    '\$18000.90',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardWithIcon(
                icondata: Icons.account_balance_wallet,
                text: 'Top Up',
              ),
              CardWithIcon(icondata: Icons.swap_vert, text: 'Transfer'),
              CardWithIcon(icondata: Icons.help, text: 'Request'),
              CardWithIcon(icondata: Icons.qr_code_scanner, text: 'Scan'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              'Payment List',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardWithIcon(
                icondata: Icons.lightbulb_outline,
                text: 'Electricity',
              ),
              CardWithIcon(icondata: Icons.wifi, text: 'Internet'),
              CardWithIcon(
                  icondata: Icons.confirmation_number, text: 'Voucher'),
              CardWithIcon(icondata: Icons.favorite_border, text: 'Assurance'),
            ],
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardWithIcon(
                icondata: Icons.water_drop,
                text: 'Water',
              ),
              CardWithIcon(icondata: Icons.account_balance, text: 'Merchant'),
              CardWithIcon(icondata: Icons.receipt, text: 'Bill'),
              CardWithIcon(icondata: Icons.more_horiz, text: 'More'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: "Monthly Reporting",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        "                                        See More",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 90,
            width: 380,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.9), // White shadow
                  blurRadius: 12, // Blur for softness
                  spreadRadius: 5.0, // Spread for visibility
                  offset: const Offset(0, 0), // Centered shadow
                ),
                BoxShadow(
                  color:
                      Colors.grey.withOpacity(0.4), // Gray shadow for contrast
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: const Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: -5,
                  height: 70,
                  top: 10,
                  child: Container(
                    height: 0,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Center(
                      child: Text(
                        "25%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 100,
                  bottom: 30,
                  child: Column(
                    children: [
                      Text(
                        "Total Saving",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("September 2024")
                    ],
                  ),
                ),
                Positioned(
                  left: 270,
                  bottom: 30,
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text("\$10k"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}

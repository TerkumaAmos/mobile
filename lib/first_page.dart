import 'package:flutter/material.dart';
import 'package:mobile/colors.dart';
import 'package:mobile/icons.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
          child: Container(
            //   alignment: Alignment.centerLeft,
            // margin: EdgeInsets.all(1),
            child: const CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage("assets/amos1.jpeg"),
            ),
          ),
        ),
        title: const Text(
          "Hi Stephaine \n Good Morning",
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          Container(
            width: 80,
            height: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: AppColors.shadows,
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 400,
            height: 150,
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
          SizedBox(height: 30),
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
            height: 30,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              'Payment List',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
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
          SizedBox(height: 40),
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
        ],
      ),
    );
  }
}

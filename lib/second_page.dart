import 'package:flutter/material.dart';
import 'package:mobile/colors.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const BackButton(
                  style: ButtonStyle(iconSize: WidgetStatePropertyAll(20)),
                ),
              ),
            ),
          ),
        ),
        title: const Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 250,
                    width: 400,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.bgColor,
                    ),
                    child: const Stack(
                      children: [
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Text(
                            "Jane Smith",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 300,
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/credit1.jpeg",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

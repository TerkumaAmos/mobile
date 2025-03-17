import 'package:flutter/material.dart';

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
    );
  }
}

import 'package:flutter/material.dart';
import 'Specification.dart';
import 'info.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alexandria'),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecRoute()),); // Implement the back button functionality
          },
        ),
      ),
       body: const Column(
        children: [
            Specify(),
            Center(child: Text("Welcome to Hotels!"),),
        ],
      )
    );
  }
}
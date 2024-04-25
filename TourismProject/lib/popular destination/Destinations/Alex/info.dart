import 'package:flutter/material.dart';
import 'package:new_project/popular%20destination/home_view.dart';
import 'Specification.dart';



class SecRoute extends StatelessWidget {
  const SecRoute({super.key});

  
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));// Implement the back button functionality
          },
        ),
      ),
      body: const Column(
        children: [
            Specify(),
        ],
      )
    );
  }
}



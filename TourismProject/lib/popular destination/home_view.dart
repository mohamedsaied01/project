import 'package:flutter/material.dart';
import 'package:new_project/popular%20destination/Destinations/Alex/info.dart';
import 'package:new_project/popular%20destination/Destinations/Cairo/info.dart';
import 'package:new_project/popular%20destination/Destinations/Hurghada/info.dart';
import 'package:new_project/popular%20destination/Destinations/LuxorAswan/info.dart';
import 'package:new_project/popular%20destination/Destinations/Sinai/info.dart';
import 'package:new_project/popular%20destination/Destinations/Siwa/info.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _handleImageTap(BuildContext context,int index) {
    switch (index) {
      case 0:
        // Handle tap for Cairo image
        Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstRoute()));
        break;
      case 1:
        // Handle tap for Alexandria image
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SecRoute()));
        break;
      // Add cases for other images as needed
      case 2:
        // Handle tap for Luxor And Aswan image
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdRoute()));
        break;

      case 3:
        // Handle tap for Siwa image
        Navigator.push(context, MaterialPageRoute(builder: (context) => const FourthRoute()));
        break;

      case 4:
        // Handle tap for Hurghada image
        Navigator.push(context, MaterialPageRoute(builder: (context) => const FifthRoute()));
        break;

      case 5:
        // Handle tap for Sinai image
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SixthRoute()));
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F1E7),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Popular Destinations',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Madimi One',
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 6,
        itemBuilder: (context, index) {
          List<String> imagePaths = [
            'images/cairo.jpg',
            'images/alexandria.jpg',
            'images/Luxur.jpg',
            'images/siwa.jpg',
            'images/hurghada.jpg',
            'images/cina.jpg',
          ];

          List<String> texts = [
            '   Cairo ,Egypt ',
            '   Alexandria,Egypt',
            '   Luxor and Aswan,Egypt',
            '   Siwa,Egypt',
            '   Hurghada,Egypt',
            '   Sinai,Egypt',
          ];

          String imagePath = imagePaths[index];
          String text = texts[index];

          return InkWell(
            onTap: () => _handleImageTap(context,index),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Countries(
                imagePath: imagePath,
                text: texts[index],
              ),
            ),
          );
        },
      ),
    );
  }
}


class Countries extends StatelessWidget {
  final String imagePath;
  final String text;

  const Countries({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8F1E7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              imagePath,
              width: 380,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Madimi One',
            ),
          ),
        ],
      ),
    );
  }
}

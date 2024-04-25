import 'package:flutter/material.dart';
import './hotels.dart';
import './places.dart';
import './rest.dart';

class Specify extends StatelessWidget{
  const Specify({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
        padding: const EdgeInsets.all(16.0), // Add padding for spacing
        child: Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenOne()),
                );
              },
              child: const Text('Hotels'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenTwo()),
                );
              },
              child: const Text('Restaurants'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenThree()),
                );
              },
              child: const Text('Places'),
            ),
          ],
        ),
      );
  }

}
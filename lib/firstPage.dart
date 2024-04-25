import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 249),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 180,
            ),
            const Image(image: AssetImage('assets/images/1.png')),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'MovieMate',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Disciver and \n search for movies',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 22),
                  backgroundColor: const Color.fromARGB(255, 154, 80, 165)),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 21),
              ),
            )
          ],
        ),
      ),
    );
  }
}

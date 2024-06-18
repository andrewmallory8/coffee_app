import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/logo.png',
            width: 500,
            height: 500,
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'COFFEE HOUSE',
              style: TextStyle(
                fontSize: 45,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (() => Navigator.of(context).pushNamed('/menu')),
              child: const Text(
                'Start Order',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

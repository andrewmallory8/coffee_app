import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> coffeeTitle = [
      'Espresso',
      'Cappuccino',
      'Mocha',
      'Latte',
      'Macchiato'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MENU',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () => print('search'),
              icon: const Icon(Icons.search),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ]),
      body: _Contents(coffeeTitle),
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents(this.coffeeTitle);

  final List<String> coffeeTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text.rich(
            TextSpan(
                text: "It's Great ",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.brown[900],
                ),
                children: const [
                  TextSpan(
                    text: 'Day for Coffee.',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 40,
                    ),
                  ),
                ]),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: coffeeTitle.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Image.asset('assets/coffee_cup.png'),
                  minTileHeight: 60,
                  title: Text(
                    coffeeTitle[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: (() => Navigator.of(context).pushNamed('/details')),
                  trailing: const InkWell(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      size: 30,
                    ),
                  ),
                );
              })),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Latte',
          style: TextStyle(color: Colors.brown, fontSize: 30),
        ),
        elevation: 0,
      ),
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          'assets/coffee_cup.png',
          height: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Latte',
                    style: TextStyle(fontSize: 20, color: Colors.brown),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.remove),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                      Icon(Icons.add)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Size',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/coffee_cup.png',
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/coffee_cup.png',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Sugar',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    '0%',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '25%',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '50%',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '100%',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Center(
          child: ElevatedButton(
            onPressed: (() => Navigator.of(context).pushNamed('/summary')),
            child: const Text('Add to cart'),
          ),
        )
      ],
    );
  }
}

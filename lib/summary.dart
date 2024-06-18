import 'package:coffee_app/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Summary',
        ),
        elevation: 0,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset('assets/image.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              Text(
                'Order :',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Latte',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'x1',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '---------------------------------------------',
                style: TextStyle(color: Colors.brown),
              ),
              SizedBox(
                height: 20,
              ),
              SummaryDisplay(title: 'Total', subtitle: 'XXX.XX'),
              SizedBox(
                height: 20,
              ),
              SummaryDisplay(title: 'Tax', subtitle: 'XX.XX'),
              SizedBox(
                height: 20,
              ),
              SummaryDisplay(title: 'Discount', subtitle: 'X.XX'),
              SizedBox(
                height: 100,
              ),
              SubmitButton(title: 'Pay')
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SummaryDisplay extends StatelessWidget {
  const SummaryDisplay({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.brown,
            fontSize: 20,
          ),
        ),
        const Spacer(),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.brown,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            print('click');
          },
          child: Text(title),
        ),
      ),
    );
  }
}

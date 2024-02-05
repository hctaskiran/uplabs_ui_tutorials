import 'package:flutter/material.dart';

class BalanceShow extends StatelessWidget {
  const BalanceShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
        text: TextSpan(
          text: '\$ ',
          style: TextStyle(
            color: Colors.grey[600]!,
            fontSize: 22,
          ),
          children: const <TextSpan>[
            TextSpan(
              text: '1,200.00',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            TextSpan(
                text: '\nBalance USD',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                )),
          ],
        ),
      ),
    );
  }
}

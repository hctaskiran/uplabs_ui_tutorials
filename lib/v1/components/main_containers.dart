import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final IconData icon;
  final String title;
  const MainContainer(
      {super.key, required this.firstColor, required this.secondColor, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

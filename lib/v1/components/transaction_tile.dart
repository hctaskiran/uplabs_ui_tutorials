import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final String trailing;
  const TransactionTile(
      {super.key, required this.leading, required this.title, required this.subtitle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: ListTile(
        leading: leading,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(trailing),
      ),
    );
  }
}

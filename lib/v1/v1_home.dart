import 'package:flutter/material.dart';
import 'package:uplabs_ui_tutorials/v1/components/balance.dart';
import 'package:uplabs_ui_tutorials/v1/components/main_containers.dart';
import 'package:uplabs_ui_tutorials/v1/components/transaction_tile.dart';

class V1Home extends StatelessWidget {
  const V1Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const BalanceShow(),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert, size: 40),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        MainContainer(
                            firstColor: Colors.orange,
                            secondColor: Colors.red[400]!,
                            icon: Icons.add,
                            title: 'Load Money'),
                        const SizedBox(width: 20),
                        const MainContainer(
                            firstColor: Colors.deepPurple,
                            secondColor: Colors.blue,
                            icon: Icons.request_page_rounded,
                            title: 'Request Money')
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        MainContainer(
                            firstColor: Colors.green,
                            secondColor: Colors.green[200]!,
                            icon: Icons.send,
                            title: 'Send Money'),
                        const SizedBox(width: 20),
                        MainContainer(
                            firstColor: Colors.yellow,
                            secondColor: Colors.orange[500]!,
                            icon: Icons.payment_outlined,
                            title: 'Pay Merchant')
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Icon(
                      Icons.more_horiz_outlined,
                      size: 30,
                    ),
                    const SizedBox(height: 10),
                    TransactionTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              Colors.yellow,
                              Colors.orange[500]!,
                            ])),
                        child: Icon(
                          Icons.payment_outlined,
                          size: 20,
                          color: Colors.grey[300],
                        ),
                      ),
                      title: 'Haktan Can Taskiran',
                      subtitle: 'Merchant Payment',
                      trailing: '-\$30 \n30/01/2024',
                    ),
                    TransactionTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              Colors.deepPurple,
                              Colors.blue,
                            ])),
                        child: Icon(
                          Icons.request_page_outlined,
                          size: 20,
                          color: Colors.grey[300],
                        ),
                      ),
                      title: 'Aleyna Cankat',
                      subtitle: 'Requested Money',
                      trailing: '-\$90 \n06/06/2024',
                    ),
                    TransactionTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              Colors.green,
                              Colors.green[200]!,
                            ])),
                        child: Icon(
                          Icons.send,
                          size: 20,
                          color: Colors.grey[300],
                        ),
                      ),
                      title: 'Emir Bagdatli',
                      subtitle: 'Send Money',
                      trailing: '-\$10 \n24/02/2024',
                    ),
                    TransactionTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              Colors.deepPurple,
                              Colors.blue,
                            ])),
                        child: Icon(
                          Icons.request_page_outlined,
                          size: 20,
                          color: Colors.grey[300],
                        ),
                      ),
                      title: 'Arda Bulundu',
                      subtitle: 'Requested Money',
                      trailing: '-\$45 \n18/02/2024',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

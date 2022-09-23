import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:montrack/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              'Transaction history',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold),
            )),
        Container(
          height: 300,
          child: SingleChildScrollView(
            child: Column(
              children: transactions.map((transaction) {
                return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            border: Border.all(color: Colors.green, width: 2),
                          ),
                          child: Text(
                            transaction.price.toString() + ' lei',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              transaction.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(DateFormat.yMMMd().format(transaction.date!),
                                style: const TextStyle(color: Colors.grey)),
                          ],
                        )
                      ]),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

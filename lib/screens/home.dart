import 'package:flutter/material.dart';
import 'package:montrack/models/transaction.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: '0', title: 'Clothes', amount: 99.99, date: DateTime.now()),
    Transaction(id: '1', title: 'Lipstick', amount: 49.99, date: DateTime.now())
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MonTracker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: Container(
              alignment: Alignment.center,
              child: Text('Here will be a chart of expanses'),
              height: 100,
              width: MediaQuery.of(context).size.width,
            ),
            elevation: 5.0, // controls the drop shadow of the card
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Price'),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Add'),
                      style:
                          TextButton.styleFrom(primary: Colors.green.shade800)),
                ],
              ),
            ),
          ),
          Column(
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
                          transaction.amount.toString() + ' lei',
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
                          Text(DateFormat.yMMMd().format(transaction.date),
                              style: const TextStyle(color: Colors.grey)),
                        ],
                      )
                    ]),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

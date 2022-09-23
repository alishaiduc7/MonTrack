import 'package:flutter/material.dart';
import 'package:montrack/models/transaction.dart';
import 'package:montrack/widgets/add_transaction_card.dart';
import 'package:montrack/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(id: '0', date: DateTime.now(), title: 'Clothes', price: 99.99),
    Transaction(id: '1', date: DateTime.now(), title: 'Lipstick', price: 49.99)
  ];

  void _addNewTransaction(String title, double price) {
    Transaction newTransaction = Transaction(
      title: title,
      price: price,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddTransactionCard(_addNewTransaction),
        TransactionList(_transactions)
      ],
    );
  }
}

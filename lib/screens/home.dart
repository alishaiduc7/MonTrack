import 'package:flutter/material.dart';
import 'package:montrack/widgets/user_transactions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        titleTextStyle: TextStyle(color: Colors.amber.shade400, fontSize: 25),
        title: const Text('MonTracker'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddTransactionCard extends StatelessWidget {
  final Function addNewTransaction;

  AddTransactionCard(this.addNewTransaction);
  final titleInputController = TextEditingController();
  final priceInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 254, 252, 229),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                floatingLabelStyle: TextStyle(
                    color: Colors.green.shade800, fontWeight: FontWeight.bold),
                labelStyle: TextStyle(
                    color: Colors.amber.shade400, fontWeight: FontWeight.bold),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.green.shade800, width: 3),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber.shade400, width: 3)),
              ),
              controller: titleInputController,
            ),
            TextField(
              decoration: InputDecoration(
                focusColor: Colors.green.shade800,
                labelText: 'Price',
                floatingLabelStyle: TextStyle(
                    color: Colors.green.shade800, fontWeight: FontWeight.bold),
                labelStyle: TextStyle(
                    color: Colors.amber.shade400, fontWeight: FontWeight.bold),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.green.shade800, width: 3),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber.shade400, width: 3)),
              ),
              controller: priceInputController,
            ),
            TextButton(
              onPressed: () {
                addNewTransaction(titleInputController.text,
                    double.parse(priceInputController.text));
              },
              child: Text('Add'),
              style: TextButton.styleFrom(
                  primary: Colors.green.shade800,
                  side: BorderSide(width: 2, color: Colors.green.shade800)),
            ),
          ],
        ),
      ),
    );
  }
}

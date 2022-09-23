import 'package:flutter/material.dart';

class Transaction {
  late String? id;
  late String title;
  late double price;
  late DateTime? date;

  Transaction({this.id, required this.title, required this.price, this.date});
}

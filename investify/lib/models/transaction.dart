import 'package:flutter/material.dart';

enum TransactionStatus { successful, pending, failed }

enum TransactionType {
  buy,
  sell,
  send,
  withdraw,
  deposit,
}

class Transaction {
  final String id;
  final TransactionType transactionType;
  final TransactionStatus status;
  final double amount;
  final DateTime date;

  const Transaction({
    required this.id,
    required this.transactionType,
    required this.status,
    required this.amount,
    required this.date,
  });
}

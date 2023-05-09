import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/dashboard/recent_transactions_model.dart';

List<TransactionList> getTransactionLists(List<Transaction> transactions) {
  final List<Transaction> todayTransactions = [];
  final List<Transaction> yesterdayTransactions = [];
  final List<Transaction> last7DaysTransactions = [];
  final List<Transaction> lastMonthTransactions = [];
  final List<Transaction> olderTransactions = [];

  final now = DateTime.now();

  for (final transaction in transactions) {
    if (transaction.date.isAtSameMomentAs(now) ||
        (transaction.date.isAfter(now.subtract(Duration(days: 1))) &&
            transaction.date.isBefore(now))) {
      todayTransactions.add(transaction);
    } else if (transaction.date
        .isAtSameMomentAs(now.subtract(Duration(days: 1)))) {
      yesterdayTransactions.add(transaction);
    } else if (transaction.date.isAfter(now.subtract(Duration(days: 7)))) {
      last7DaysTransactions.add(transaction);
    } else if (transaction.date.isAfter(now.subtract(Duration(days: 30)))) {
      lastMonthTransactions.add(transaction);
    } else {
      olderTransactions.add(transaction);
    }
  }

  final List<TransactionList> transactionLists = [];

  if (todayTransactions.isNotEmpty) {
    transactionLists
        .add(TransactionList(title: 'Today', transactions: todayTransactions));
  }

  if (yesterdayTransactions.isNotEmpty) {
    transactionLists.add(TransactionList(
        title: 'Yesterday', transactions: yesterdayTransactions));
  }

  if (last7DaysTransactions.isNotEmpty) {
    transactionLists.add(TransactionList(
        title: 'Last 7 Days', transactions: last7DaysTransactions));
  }

  if (lastMonthTransactions.isNotEmpty) {
    transactionLists.add(TransactionList(
        title: 'Last Month', transactions: lastMonthTransactions));
  }

  if (olderTransactions.isNotEmpty) {
    transactionLists
        .add(TransactionList(title: 'Older', transactions: olderTransactions));
  }

  return transactionLists;
}

Color getRandomColor(String title) {
  final random = Random(title.hashCode);
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

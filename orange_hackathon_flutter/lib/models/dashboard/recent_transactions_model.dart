class Transaction {
  final String title;
  final DateTime date;
  final String amount;

  Transaction({required this.title, required this.date, required this.amount});
}

class TransactionList {
  final String title;
  final List<Transaction> transactions;

  TransactionList({required this.title, required this.transactions});
}

final List<Transaction> transactions = [
  Transaction(
      title: 'Transaction 1',
      date: DateTime.now().subtract(Duration(days: 1)),
      amount: '50'),
  Transaction(
      title: 'Transaction 2',
      date: DateTime.now().subtract(Duration(days: 2)),
      amount: '1000'),
  Transaction(
      title: 'Transaction 3',
      date: DateTime.now().subtract(Duration(days: 3)),
      amount: '80'),
  Transaction(
      title: 'Transaction 4',
      date: DateTime.now().subtract(Duration(days: 8)),
      amount: '200'),
  Transaction(
      title: 'Transaction 5',
      date: DateTime.now().subtract(Duration(days: 31)),
      amount: '600'),
];

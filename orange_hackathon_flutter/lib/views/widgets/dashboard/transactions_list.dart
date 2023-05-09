import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:orange_hackathon_flutter/methods/dashboard/dashboard_methods.dart';
import '../../../models/dashboard/recent_transactions_model.dart';

class TransactionListWidget extends StatelessWidget {
  final List<TransactionList> transactionLists;

  const TransactionListWidget({Key? key, required this.transactionLists})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Scrollbar(
        child: ListView.builder(
          itemCount: transactionLists.length,
          itemBuilder: (BuildContext context, int index) {
            final transactionList = transactionLists[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 4.0),
                  child: Text(
                    transactionList.title,
                    style: const TextStyle(
                      color: Color(0xFF939094),
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: transactionList.transactions.length,
                  itemBuilder: (BuildContext context, int index) {
                    final transaction = transactionList.transactions[index];
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 16,
                        //randomize the color based on index
                        backgroundColor: getRandomColor(transaction.title),
                        child: Text(
                          transaction.title[0],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      hoverColor: Colors.grey[200],
                      onTap: () {},
                      title: Text(
                        transaction.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      // subtitle: Text(getFormattedDate(transaction.date)),
                      subtitle:
                          Text(DateFormat('h:mm a').format(transaction.date)),
                      trailing: Text(
                        '${transaction.amount} EGP',
                        style: const TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String getFormattedDate(DateTime date) {
    // Implement your date formatting logic here
    return date.toIso8601String();
  }
}

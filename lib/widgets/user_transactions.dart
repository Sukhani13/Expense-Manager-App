import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transacion_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  List<Transaction> _userTransactions = [
    // Transaction(
    //   id: "t1",
    //   title: "New Shoes",
    //   amount: 2000,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: "t2",
    //   title: "Fruits",
    //   amount: 1200.05,
    //   date: DateTime.now(),
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    void _addNewTransaction(String txTitle, double txAmount) {
      final newTx = Transaction(
          title: txTitle,
          amount: txAmount,
          date: DateTime.now(),
          id: DateTime.now().toString());

      setState(() {
        _userTransactions.add(newTx);
      });
    }

    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        Expanded(
          child: TransactionList(_userTransactions),
        ),
        RaisedButton(
          onPressed: () => print(
              '${_userTransactions[0].title} ${_userTransactions[0].amount}'),
          child: Text('data'),
        ),
      ],
    );
  }
}

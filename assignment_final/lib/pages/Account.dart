import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({Key? key , required this.amount,}) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          children: [
            buildRow(['Creator ID','Currency', 'Amount', 'Name', 'Description'], isHeader: true),
            buildRow(['cell1', 'cell2', '$amount', 'cell4', 'cell5']),
            buildRow(['cell1', 'cell2', '$amount', 'cell4', 'cell5']),
            buildRow(['cell1', 'cell2', '$amount', 'cell4', 'cell5']),
          ],
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
          final tabStyle = TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            fontFamily: isHeader ? 'Quicksand-Bold' : 'Quicksand',
          );

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(cell, style: tabStyle),
            ),
          );
        }).toList(),
      );
}

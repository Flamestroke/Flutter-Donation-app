import 'package:flutter/material.dart';

class DropDownView extends StatefulWidget {
  const DropDownView({Key? key}) : super(key: key);

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  List<String> items = ['INR ₹', 'USD \$', 'EUR €', 'JPY ¥','GBP £'];
  String? selectedItem = 'INR ₹';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: selectedItem,
          items: items
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ),
              )
              .toList(),
          onChanged: (item) => setState(() => selectedItem = item),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        //Description
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(8.0),

        decoration: BoxDecoration(
          color: Colors.white60.withOpacity(0.5),
        ),
        child: TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Say something nice (optional)',
          ),
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 10,
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        //Name
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white60.withOpacity(0.5),
        ),
        child: SizedBox(
          height: 200,
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Your Name (optional)',
            ),
              onChanged: (text) {
                print('$text');
              },
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

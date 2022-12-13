import 'package:flutter/material.dart';
import 'package:assignment_final/Components/Creators.dart';
import 'package:assignment_final/Components/CreatorCard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 6, top: 5, bottom: 5),
          child: Text(
            "Recommended Creators",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: creator.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20),
              itemBuilder: (context, index) => CreatorList(
                creators: creator[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

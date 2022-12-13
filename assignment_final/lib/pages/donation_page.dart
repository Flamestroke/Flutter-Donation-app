import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assignment_final/Components/Creators.dart';
import 'package:assignment_final/pages/home_page.dart';
import 'package:assignment_final/Components/DonBody.dart';

class DonationPage extends StatelessWidget {
  final Creators creators;
  const DonationPage({Key? key, required this.creators}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          creators.title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: creators.color,
        elevation: 1,
        leading: IconButton(
          icon: SvgPicture.asset("Assets/Icons/back.svg"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.all(1.0),
            icon: Image.asset(creators.image),
            onPressed: () {},
          ),
          const SizedBox(width: 20 / 2)
        ],
      ),
      body: DonBody(
        creators: creator[creators.id],
      ),
    );
  }
}
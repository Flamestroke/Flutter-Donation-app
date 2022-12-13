import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assignment_final/Components/body.dart';

import 'Account.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: newAppBar(context),
      body: const Body(),
    );
  }

  AppBar newAppBar(context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Support",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      backgroundColor: Colors.white60,
      elevation: 1,
      leading: IconButton(
        icon: SvgPicture.asset("Assets/Icons/menu.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("Assets/Icons/account.svg"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const account(amount: '',),
              ),
            );
          },
        ),
        const SizedBox(width: 20 / 2)
      ],
    );
  }
}

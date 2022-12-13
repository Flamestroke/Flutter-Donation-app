import 'package:assignment_final/pages/donation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assignment_final/Components/Creators.dart';

class CreatorList extends StatefulWidget {
  final Creators creators;
  const CreatorList({
    Key? key,
    required this.creators,
  }) : super(key: key);

  @override
  State<CreatorList> createState() => _CreatorListState();
}

class _CreatorListState extends State<CreatorList> {

  bool click = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DonationPage(creators: creator[widget.creators.id],),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                gradient: widget.creators.gradient,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(widget.creators.image),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.creators.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: IconButton(
                    icon: (click == false) ? SvgPicture.asset("Assets/Icons/heart_full.svg"):SvgPicture.asset("Assets/Icons/heart_empty.svg") ,
                    onPressed: () {
                      setState((){
                        click = !click;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              widget.creators.profession,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Quicksand-SemiBold',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:assignment_final/Components/DropDownMenu.dart';
import 'package:flutter/material.dart';
import 'package:assignment_final/Components/Creators.dart';

import 'FormComponents/Description.dart';
import 'FormComponents/Name.dart';

class DonBody extends StatefulWidget {
  final Creators creators;
  DonBody({Key? key, required this.creators,})
      : super(key: key);

  @override
  State<DonBody> createState() => _DonBodyState();
}

class _DonBodyState extends State<DonBody> {
  late String title;
  String text = '0';

  void _setText() {
    setState((){
      text = title;
    });
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Send your love to " +
                  widget.creators.title +
                  " to become a real fan",
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 80,
                      width: 80,
                      padding: const EdgeInsets.only(bottom: 30),
                      child: const DropDownView(),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      //Amount
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(1.0),
                      decoration: BoxDecoration(
                        color: Colors.white60.withOpacity(0.5),
                      ),
                      child: SizedBox(
                        width: 240,
                        height: 100,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Amount',
                          ),
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Amount is Required';
                            }
                          },
                          onChanged: (value) {
                            //print(value);
                            title = value;
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Name(),
            const Description(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(top: 5),
                minimumSize: const Size(280, 60),
                textStyle: const TextStyle(fontSize: 25),
                primary: widget.creators.color,
                onPrimary: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      (20),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                if (!_formkey.currentState!.validate()) {
                  return;
                } else if (_formkey.currentState!.validate()) {
                  _setText();
                }
              },
              child: Text('Support $text'),
            )
          ],
        ),
      ),
    );
  }
}

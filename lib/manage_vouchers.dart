import 'package:booking/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import 'checkbox_widget.dart';
import 'main.dart';

class ManageVouchers extends StatelessWidget {
  const ManageVouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: Text('Received Offer', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: Text('The following hotels have been matched as candidates for your value share. Click to see the details.', style: TextStyle(fontSize: 20)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'Hotel ABC'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'Hotel 123'),
            ),
            const DottedLine(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: Text('Accepting the Offer', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: Text('You accept the offer with only part of your value share, leaving the rest open to future offers.', style: TextStyle(fontSize: 20)),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        flex: 6,
                        child: Text('How much of your \$750 value share to accept this offer:', style: TextStyle(fontSize: 20))
                    ),
                    Expanded(
                        flex: 3,
                        child: SliderWidget()
                    ),
                  ],
                )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff414bb2),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  fixedSize: const Size(250, 50),
                  textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Main()),
                );
              },
              child: const Text('Accept Above Amount'),
            ),
            const SizedBox(height: 5),
            const DottedLine(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: Text('Rejecting the Offer Fully', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff414bb2),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    fixedSize: const Size(250, 50),
                    textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Main()),
                  );
                },
                child: const Text('Reject/Pass')
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

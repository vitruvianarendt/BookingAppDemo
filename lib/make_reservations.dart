import 'package:flutter/material.dart';

import 'checkbox_widget.dart';
import 'main.dart';

class MakeReservations extends StatelessWidget {
  const MakeReservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        // The search area here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30), //apply padding to all four sides
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(5)
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search for locations',
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: Text('You can use your vouchers for the 12 following hotels:', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: '5* Ramada Plaza By Wyndham Gevgelija'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: '5* Bushi Resort & Spa Skopje'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: '5* Hotel Aleksandar Palace Skopje'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: '5* Hotel Izgrev Spa & Aquapark Struga'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: '5* Park Hotel & Spa Skopje'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: '5* ...6 more hotels (accommodations)'),
            ),
            const SizedBox(height: 10),
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
              child: const Text('Make Bookings'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

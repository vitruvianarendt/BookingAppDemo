import 'package:booking/popup_widget.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class BookingType extends StatelessWidget {
  const BookingType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffe54c92),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                fixedSize: const Size(220, 160),
                textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Main()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                      Icons.hotel,
                      color: Colors.black,
                      size: 70.0
                  ),
                  Text('Hotels', textAlign: TextAlign.center, style: TextStyle(fontSize: 25)),
                  CustomPopup(text: '\n135 Hotels\n\n75 Coffee & Bars\n\n18 Night Clubs', display: '135 | 75 | 18', color: 0xffffffff)
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff54c1ac),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                fixedSize: const Size(220, 160),
                textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Main()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                      Icons.restaurant_menu,
                      color: Colors.black,
                      size: 70.0
                  ),
                  Text('Restaurants, Bars, Coffee', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                  CustomPopup(text: '\n135 Restaurants\n\n75 Coffee & Bars\n\n18 Night Clubs', display: '135 | 75 | 18', color: 0xffffffff)
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff2d9bf0),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                fixedSize: const Size(220, 160),
                textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Main()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text('Other', style: TextStyle(fontSize: 25)),
                  CustomPopup(text: '\n135 Restaurants\n\n75 Coffee & Bars\n\n18 Night Clubs', display: 'Yachts, Bars, Travel Agencies, Flights...', color: 0xffffffff)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

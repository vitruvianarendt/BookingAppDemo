import 'package:booking/voucher_burning.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:dotted_line/dotted_line.dart';

import 'future_value.dart';
import 'login.dart';
import 'make_reservations.dart';
import 'manage_vouchers.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Booking',
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
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
                  MaterialPageRoute(builder: (context) => const FutureValue()),
                );
              },
              child: const Text('Get Value Share'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff414bb2),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  fixedSize: const Size(250, 50),
                  textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),

              child: const Text('Trade Your Value Share'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Main()),
                );
              },
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
              child: const Text('Manage Your Vouchers'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ManageVouchers()),
                );
              },
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
              child: const Text('Make Reservations'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MakeReservations()),
                );
              },
            ),
            Badge(
              badgeContent: const Text('2', style: TextStyle(color: Colors.white)),
              child: const Icon(
                Icons.message_rounded,
                color: Colors.red,
                size: 40.0
              ),
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
              child: const Text('Use Vouchers For Bills'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VoucherBurning()),
                );
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'main.dart';

class VoucherBurning extends StatelessWidget {
  const VoucherBurning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: Text('The service provider will scan the QR code and this will settle your bill with them, using up the related voucher:', style: TextStyle(fontSize: 20)),
            ),
            const Icon(
              Icons.qr_code_2,
              color: Colors.black,
              size: 150.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: Text('This will burn/use XXX of your value share/vouchers.', style: TextStyle(fontSize: 20)),
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
              child: const Text('Accept'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

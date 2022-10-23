import 'package:flutter/material.dart';

import 'checkbox_widget.dart';
import 'main.dart';


class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                child: Text('Prepayment Amount', style: TextStyle(fontSize: 20), textAlign: TextAlign.left)
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                  child: SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "    \$750",
                          border: OutlineInputBorder()
                      ),
                    ),
                  )
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                child: Text('Choose Payment Method', style: TextStyle(fontSize: 20), textAlign: TextAlign.left)
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'Stripe'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'PayPal'),
            ),
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                child: Text('Choose e-wallet for the digital receipt of your future value', style: TextStyle(fontSize: 20), textAlign: TextAlign.left)
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'E-wallet in this app'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0), //apply padding to all four sides
              // child: Text('You are not committing to any specific services at this point. Custom offers for specific hotels & travel services will be sent to you through the app as they become available.', style: TextStyle(fontSize: 20))
              child: RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Simplest & fastest if you are not currently planning to ', style: TextStyle(fontSize: 15)),
                      TextSpan(text: 'trade your value', style: TextStyle(fontSize: 15, decoration: TextDecoration.underline)),
                      TextSpan(text: '. You can always move it later if you decide to trade.', style: TextStyle(fontSize: 15))
                    ],
                  )
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'My external e-wallet, Trust, Metamask'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0), //apply padding to all four sides
              // child: Text('You are not committing to any specific services at this point. Custom offers for specific hotels & travel services will be sent to you through the app as they become available.', style: TextStyle(fontSize: 20))
              child: RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Best if you plan to trade value.', style: TextStyle(fontSize: 15)),
                    ],
                  )
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff414bb2),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    fixedSize: const Size(320, 50),
                    textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Main()),
                  );
                },
                child: const Text('Proceed'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

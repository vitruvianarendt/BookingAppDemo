import 'package:booking/payment.dart';
import 'package:flutter/material.dart';

import 'guaranteed_value.dart';


class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Text('Confirmation', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              // child: Text('You are not committing to any specific services at this point. Custom offers for specific hotels & travel services will be sent to you through the app as they become available.', style: TextStyle(fontSize: 20))
              child: RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'You are', style: TextStyle(fontSize: 20)),
                      TextSpan(text: ' not ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      TextSpan(text: 'committing to any specific services at this point. Custom offers for specific hotels & travel services will be sent to you through the app as they become available.', style: TextStyle(fontSize: 20))
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'If after 5 years you do not accept any specific offers, your money will be refunded to you.', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'In return for the money you prepay now, NUK will give you a digital receipt for your prepaid future value.', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Optionally, instead of using your future value yourself, you can trade it partially or fully on an open market at any time.', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child:  InkWell(
                  child: const Text('Click here for more info on how you can trade your future value.', style: TextStyle(fontSize: 20, decoration: TextDecoration.underline),),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GuaranteedValue()),
                  )
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
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
                  MaterialPageRoute(builder: (context) => const Payment()),
                );
              },
              child: const Text('Accept & Proceed'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

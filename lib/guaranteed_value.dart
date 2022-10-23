import 'package:flutter/material.dart';

import 'confirmation.dart';


class GuaranteedValue extends StatelessWidget {
  const GuaranteedValue({super.key});

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
                child: Text('ICHI Guaranteed Value', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
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
                      TextSpan(text: 'You can only gain in \$ if the market demand rises. ', style: TextStyle(fontSize: 20))
                    ],
                  )
              ),
            ),
            const SizedBox(height: 10),
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
                      TextSpan(text: 'Regardless of how much the market demand or \$ price falls, you always keep the rights to the same value from the day you prepaid your value share.', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  )
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Inflation protection policy is as follows...'),
                  ],
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 10),
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
                      TextSpan(text: 'Value is protected because we can issue ICHI only in amount matching the exact capacity of our HORECA industry.', style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
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
                  MaterialPageRoute(builder: (context) => const Confirmation()),
                );
              },
              child: const Text('Go Back'),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

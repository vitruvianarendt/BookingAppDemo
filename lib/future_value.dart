import 'package:booking/preferences.dart';
import 'package:booking/slider_widget.dart';
import 'package:flutter/material.dart';


class FutureValue extends StatelessWidget {
  const FutureValue({super.key});

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
                child: Text('Get Future Value in Hotels & Travel Services', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                  child: Text('Selected Region: Macedonia', style: TextStyle(fontSize: 20))
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                          flex: 3,
                          child: Text('Pool Sum', style: TextStyle(fontSize: 18), textAlign: TextAlign.center)
                      ),
                      Expanded(
                          flex: 3,
                          child: Text('Used', style: TextStyle(fontSize: 18), textAlign: TextAlign.center)
                      ),
                      Expanded(
                          flex: 3,
                          child: Text('Available', style: TextStyle(fontSize: 18), textAlign: TextAlign.center)
                      ),
                    ],
                  )
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                          flex: 3,
                          child: Text('\$2.34M', style: TextStyle(fontSize: 18), textAlign: TextAlign.center)
                      ),
                      Expanded(
                          flex: 3,
                          child: Text('\$0.63M', style: TextStyle(fontSize: 18), textAlign: TextAlign.center)
                      ),
                      Expanded(
                          flex: 3,
                          child: Text('\$1.71M', style: TextStyle(fontSize: 18), textAlign: TextAlign.center)
                      ),
                    ],
                  )
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20), //apply padding to all four sides
              child: Text('How Much To Prepay', style: TextStyle(fontSize: 22), textAlign: TextAlign.center),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        flex: 2,
                        child: Text('\$100', style: TextStyle(fontSize: 18))
                    ),
                    Expanded(
                        flex: 8,
                        child: SliderWidget()
                    ),
                    Expanded(
                        flex: 2,
                        child: Text('\$5000', style: TextStyle(fontSize: 18))
                    ),
                  ],
                )
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                  child: Text('Resulting discount level:', style: TextStyle(fontSize: 20))
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: const Text('L1:\n\$100+', textAlign: TextAlign.center),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.green,
                  ),
                  child: const Text('L2:\n\$500+', textAlign: TextAlign.center),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: const Text('L3:\n\$2000+', textAlign: TextAlign.center),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: const Text('VIP:\n\$5000+', textAlign: TextAlign.center),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                  child: Text('Under L2:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                  child: Text('Discounts range from 10% to 35%.', style: TextStyle(fontSize: 16))
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                  child: Text('You will have 5 years to use or resell your value share.', style: TextStyle(fontSize: 16))
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                  child: Text('Some examples of what \$750 give:', style: TextStyle(fontSize: 16))
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0), //apply padding to all four sides
                  child: Text('- 18 nights @ 4 star...\n- 12 nights @ 5 star...', style: TextStyle(fontSize: 16))
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff414bb2),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  fixedSize: const Size(260, 50),
                  textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Preferences()),
                );
              },
              child: const Text('See Full List of Values in L2'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff414bb2),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  fixedSize: const Size(260, 50),
                  textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Preferences()),
                );
              },
              child: const Text('More Value Preferences'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

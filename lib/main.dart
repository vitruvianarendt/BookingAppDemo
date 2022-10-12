import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:dotted_line/dotted_line.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Booking',
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 160, // Set this height
        elevation: 0,
        flexibleSpace: Container(
          color: const Color(0xffe6e6e6),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Text('NUK Value Shares', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Text('Smart Vouchers', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('E-mail', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Password', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20), //apply padding to all four sides
                  child: ElevatedButton(
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
                        MaterialPageRoute(builder: (context) => const BookingType()),
                      );
                    },
                    child: const Text('Login'),
                    )
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.fingerprint_outlined,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    Text('Use Biometrics', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff414bb2))),
                    ToggleWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Forgot Password?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff414bb2)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Privacy', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff414bb2)))
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
              child: Text('Selected Region: Macedonia (others coming soon)', style: TextStyle(fontSize: 20))
            ),
            const SizedBox(height: 10),
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

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), //apply padding to all four sides
                  child: Text('Tell Us Your Preferences', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), //apply padding to all four sides
                  child: Text('The following preferences will be used in creating custom offers for you. You can update your preferences at any time.', style: TextStyle(fontSize: 20))
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: CheckBoxWidget(text: 'Spa Center'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: CheckBoxWidget(text: '5 Star'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: CheckBoxWidget(text: 'Ski Center'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: CheckBoxWidget(text: 'Vegan Food'),
              ),            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: CheckBoxWidget(text: 'Covid Protocol ABC'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: CheckBoxWidget(text: 'Smoking Section'),
              ),            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                child: CheckBoxWidget(text: 'Pool'),
              ),
              const SizedBox(height: 10),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                  child: Text('Describe custom preferences:', style: TextStyle(fontSize: 20), textAlign: TextAlign.left)
              ),
              const SizedBox(height: 10),
              const Padding(
                //padding: EdgeInsets.fromLTRB(20, 0, 20, MediaQuery.of(context).viewInsets.bottom), //apply padding to all four sides
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SizedBox(
                    height: 4 * 24.0,
                    child: TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          hintText: "Preferences",
                          border: OutlineInputBorder()
                      ),
                    ),
                  )
              ),
              const SizedBox(height: 20),
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
                child: const Text('Proceed'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

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
                  Text('Hotels', style: TextStyle(fontSize: 25))
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
                  Text('Restaurants, Bars, Coffee', textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
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
                  Text('Other', style: TextStyle(fontSize: 25))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
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

class MakeReservations extends StatelessWidget {
  const MakeReservations({super.key});

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
              child: Text('You have vouchers for the following hotels.', style: TextStyle(fontSize: 20)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: Text('Choose for which to make a booking.', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'Hotel 1'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'Hotel 2'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
              child: CheckBoxWidget(text: 'Hotel 3'),
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

class CheckBoxWidget extends StatefulWidget {

  final String text;
  const CheckBoxWidget ({ Key? key, required this.text }): super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.grey;
    }

    return Row(
      children: <Widget>[
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Flexible(
          child: Text(
              widget.text,
              style: const TextStyle(fontSize: 17.0),
            ),
        ),
      ],
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 750,
      divisions: 50,
      activeColor: const Color(0xff414bb2),
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  State<ToggleWidget> createState() => _ToggleWidget();
}

class _ToggleWidget extends State<ToggleWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        scale: 1.4,
        child: Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          activeTrackColor: const Color(0xff414bb2),
          activeColor: Colors.white,
        )
    );
  }
}

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
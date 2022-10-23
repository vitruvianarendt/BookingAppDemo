import 'package:booking/popup_widget.dart';
import 'package:flutter/material.dart';

import 'booking_type.dart';


class RegisterPartner extends StatelessWidget {
  const RegisterPartner({super.key});

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
              // const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Text('Registration', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Text('as a Partner', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              const CustomPopup(text: '\n2378 Hotels, Restaurants, Clubs, etc.\n\n234 Tour operators, Travel agencies\n\n130 Business investors', display: '2378 | 234 | 130', color: 0xff111111),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Company Name', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your company name',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('E-mail (Username)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal))
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Phone', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your phone number',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), //apply padding to all four sides
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Password', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 20),
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
                    child: const Text('Submit'),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
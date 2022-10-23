import 'package:booking/register_client.dart';
import 'package:booking/register_partner.dart';
import 'package:booking/toggle_widget.dart';
import 'package:flutter/material.dart';

import 'booking_type.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 130, // Set this height
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
                child: Text('NUK', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0), //apply padding to all four sides
                child: Text('Smart Vouchers', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), //apply padding to all four sides
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
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), //apply padding to all four sides
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
              const Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), //apply padding to all four sides
                    child: Text('Forgot Password?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff414bb2)))
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0), //apply padding to all four sides
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Register', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff414bb2))),
                    Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10), //apply padding to all four sides
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff414bb2),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  fixedSize: const Size(120, 40),
                                  textStyle:
                                  const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const RegisterClient()),
                                );
                              },
                              child: const Text('As a Client'),
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), //apply padding to all four sides
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff808080),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  fixedSize: const Size(120, 40),
                                  textStyle:
                                  const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const RegisterPartner()),
                                );
                              },
                              child: const Text('As a Partner'),
                            )
                        ),
                      ],
                    ),
                    const Text('Register', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10), //apply padding to all four sides
                  child: Text('Privacy', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff414bb2))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

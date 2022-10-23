import 'package:flutter/material.dart';

import 'checkbox_widget.dart';
import 'confirmation.dart';


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

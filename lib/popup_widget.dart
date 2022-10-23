import 'package:flutter/material.dart';


class CustomPopup extends StatelessWidget {
  //const CustomPopup({super.key});

  final String text;
  final String display;
  final int color;
  const CustomPopup ({ Key? key, required this.text, required this.display, required this.color }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Text(text),
          actions: <Widget>[
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            )
          ],
        ),
      ),
      child: Text(display, style: TextStyle(color: Color(color), fontSize: 20)),
    );
  }
}
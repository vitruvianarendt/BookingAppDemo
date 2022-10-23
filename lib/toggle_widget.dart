import 'package:flutter/material.dart';


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
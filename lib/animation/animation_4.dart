import 'package:flutter/material.dart';

class Animation04 extends StatefulWidget {
  const Animation04({Key? key}) : super(key: key);

  @override
  State<Animation04> createState() => _Animation04State();
}

class _Animation04State extends State<Animation04> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              selected = !selected;
            });
          },
          child: const Text('Switch'),
        ),
        AnimatedCrossFade(
          firstChild: Container(
            width: double.infinity,
            color: Colors.blueGrey,
            height: 250.0,
          ),
          secondChild: Container(
            width: double.infinity,
            color: Colors.blue,
            height: 250.0,
          ),
          crossFadeState:
              selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}

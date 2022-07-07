import 'package:flutter/material.dart';

class Animation05 extends StatefulWidget {
  const Animation05({Key? key}) : super(key: key);

  @override
  State<Animation05> createState() => _Animation05State();
}

class _Animation05State extends State<Animation05> {
  bool selected = false;
  double _fontsize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 120.0,
          child: TextButton(
            onPressed: () {
              setState(() {
                selected = !selected;
                _fontsize = selected ? 90 : 60;
                _color = selected ? Colors.blue : Colors.red;
              });
            },
            child: const Text('Switch'),
          ),
        ),
        SizedBox(
          height: 120.0,
          child: AnimatedDefaultTextStyle(
            style: TextStyle(
              fontSize: _fontsize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: const Text('Sudesh'),
            duration: const Duration(milliseconds: 300),
          ),
        ),
      ],
    );
  }
}

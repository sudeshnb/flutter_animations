import 'package:flutter/material.dart';

class Animation01 extends StatefulWidget {
  const Animation01({Key? key}) : super(key: key);

  @override
  State<Animation01> createState() => _Animation01State();
}

class _Animation01State extends State<Animation01> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          color: Colors.blueGrey,
          height: 250.0,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}

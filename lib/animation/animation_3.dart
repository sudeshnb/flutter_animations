import 'package:flutter/material.dart';

class Animation03 extends StatefulWidget {
  const Animation03({Key? key}) : super(key: key);

  @override
  State<Animation03> createState() => _Animation03State();
}

class _Animation03State extends State<Animation03> {
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
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          color: selected ? Colors.blueGrey : Colors.red,
          height: selected ? 100.0 : 200.0,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          child: const FlutterLogo(size: 50.0),
        ),
      ),
    );
  }
}

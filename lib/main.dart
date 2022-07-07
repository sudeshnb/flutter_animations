import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/animation/animation_1.dart';
import 'package:flutter_application_3/animation/animation_2.dart';
import 'package:flutter_application_3/animation/animation_3.dart';
import 'package:flutter_application_3/animation/animation_4.dart';
import 'package:flutter_application_3/animation/animation_5.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static String title = 'Animations';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  // ignore: use_key_in_widget_constructors
  const MainPage({required this.title});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool shouldPop = true;
  @override
  Widget build(BuildContext context) => Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView.builder(
            itemCount: childs.length,
            itemBuilder: (context, index) {
              return childs[index];
            }),
      );
}

List<Widget> childs = [
  const Animation01(),
  const Animation02(),
  const Animation03(),
  const Animation04(),
  const Animation05(),
];

import 'package:flutter/material.dart';
import 'package:homework_animations/screens/card_screens.dart';
import 'package:homework_animations/screens/switcher_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: Pages(),
    );
  }
}

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CardScreen()));
              },
              child: Text("Card"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SwitcherScreen()));
              },
              child: Text("Switcher"),
            )
          ],
        ),
      ),
    );
  }
}

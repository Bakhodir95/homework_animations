import 'dart:async';

import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  late PageController _animatedController;
  int _currentIndex = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _animatedController = PageController(initialPage: _currentIndex);
    startAutoScroll();
  }

  void startAutoScroll() {
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_animatedController.hasClients) {
        int nextPage = _currentIndex + 1;
        if (nextPage >= 5) {
          nextPage = 0;
        }

        _animatedController.animateToPage(
          nextPage,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );

        setState(() {
          _currentIndex = nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    _animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Card",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 200,
          child: PageView.builder(
            controller: _animatedController,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: Colors.teal[100 * (index % 9)],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isActive = !isActive;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      body: Column(
        children: [
          AnimatedSlide(
            offset: isActive ? const Offset(-2, 0) : const Offset(.5, 0),
            duration: const Duration(seconds: 1),
            child: Container(
              height: 50,
              width: 300,
              color: Colors.blueGrey,
              child: const Center(child: Text('LS Dev')),
            ),
          )
        ],
      ),
    );
  }
}

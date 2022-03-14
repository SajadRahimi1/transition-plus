import 'package:flutter/material.dart';
import 'package:transition_plus/transition_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    ScaleTransition1(
                        page: SecondPage(), type: ScaleTrasitionTypes.bottom)),
                child: const Text('TAP TO VIEW SCALE BOTTOM TRANSITION')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    ScaleTransition1(
                        page: SecondPage(), type: ScaleTrasitionTypes.top)),
                child: const Text('TAP TO VIEW SCALE TOP TRANSITION')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    ScaleTransition1(
                        page: SecondPage(),
                        type: ScaleTrasitionTypes.bottomLeft)),
                child: const Text('TAP TO VIEW SCALE BOTTOM LEFT TRANSITION')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    ScaleTransition1(
                        page: SecondPage(),
                        type: ScaleTrasitionTypes.bottomRight)),
                child: const Text('TAP TO VIEW SCALE BOTTOM RIGHT TRANSITION')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    ScaleTransition1(
                      page: SecondPage(),
                      type: ScaleTrasitionTypes.center,
                    )),
                child: const Text('TAP TO VIEW SCALE CENTER TRANSITION')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    ScaleTransition1(
                        page: SecondPage(), type: ScaleTrasitionTypes.right)),
                child: const Text('TAP TO VIEW SCALE RIGHT TRANSITION')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    ScaleTransition1(
                        page: SecondPage(), type: ScaleTrasitionTypes.left)),
                child: const Text('TAP TO VIEW SCALE LEFT TRANSITION')),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transition Plus'),
      ),
    );
  }
}

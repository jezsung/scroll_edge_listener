import 'package:flutter/material.dart';
import 'package:scroll_edge_listener/scroll_edge_listener.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScrollEdgeListener Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollEdgeListener(
          // 400 is the default size of the Placeholder widget.
          edgeOffset: 400,
          listener: () {
            debugPrint('listener called');
          },
          child: ListView(
            children: const [
              // Each Placeholder has 400 size.
              Placeholder(),
              Placeholder(),
              // The listener will be called once the scroll position reach the
              // third Placeholder since the edgeOffset is set to 400.
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}

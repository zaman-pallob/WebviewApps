import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:swipedetector/swipedetector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
      child: WebviewScaffold(
        url: "https://tornadoexpressbd.com",
        withJavascript: true,
        withZoom: false,
        appBar: AppBar(
          title: Stack(
            children: <Widget>[
              Container(child: Center(child: Text("Dash"))),
            ],
          ),
          elevation: 1,
        ),
      ),
      onSwipeDown: () {
        flutterWebviewPlugin.reload();
      },
      swipeConfiguration: SwipeConfiguration(
          verticalSwipeMinVelocity: 100.0,
          verticalSwipeMinDisplacement: 50.0,
          verticalSwipeMaxWidthThreshold: 100.0,
          horizontalSwipeMaxHeightThreshold: 50.0,
          horizontalSwipeMinDisplacement: 50.0,
          horizontalSwipeMinVelocity: 200.0),
    );
  }
}

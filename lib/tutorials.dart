import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class tutorials extends StatefulWidget {
  @override
  _tutorialsState createState() => _tutorialsState();
}

class _tutorialsState extends State<tutorials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WebView(
        initialUrl:"https://www.youtube.com/channel/UC7hR4DP07iZyWhM9FQkrFww",
        javascriptMode: JavascriptMode.unrestricted,
        //  initialUrl: "https://helloyogita.medium.com/",
      ),

    );
  }
}

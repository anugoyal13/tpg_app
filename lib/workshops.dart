import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class workshops extends StatefulWidget {
  @override
  _workshopsState createState() => _workshopsState();
}

class _workshopsState extends State<workshops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "https://techpowergirls.net/workshops/",
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}

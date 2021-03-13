import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class blogs extends StatefulWidget {
  @override
  _blogsState createState() => _blogsState();
}

class _blogsState extends State<blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //url: "https://helloyogita.medium.com/",
      body:WebView(
        initialUrl:"https://renuvkelkar.medium.com/",
        javascriptMode: JavascriptMode.unrestricted,
        //  initialUrl: "https://helloyogita.medium.com/",
        ),
      );

  }
}

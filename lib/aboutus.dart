import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          Container(child: Image.asset("assets/images/about_us 1.JPG")),
          Container(child: Image.asset("assets/images/about_us2.JPG")),
           Container(
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top:50.0),
                   child: Image.asset("assets/images/about_us3.JPG"),
                 ),
                 SizedBox(height: 50,),
                 Container(
                   height: 40,
                   width: 140,
                   decoration: BoxDecoration(
                       color: Colors.redAccent,
                       borderRadius: BorderRadius.circular(10)),
                   child: FlatButton(onPressed:(){

                     Navigator.push(
                         context, MaterialPageRoute(builder: (_) =>WebView(initialUrl:"https://techpowergirls.net/contact/",) ));
                   },
                       child:Text("Contact Us ")),
                 ),
                /* FlatButton(
                   onPressed: () {
                     Navigator.push(
                         context, MaterialPageRoute(builder: (_) => WebView(initialUrl:"https://techpowergirls.net/")));
                     //InkSplash(color: Colors.redAccent);
                   },
                   child: Text(
                     "Click here for more information",
                     style: TextStyle(
                         color: Colors.redAccent,
                         fontWeight: FontWeight.bold,
                         fontSize: 15),
                   ),
                 ),*/
               ],

             ),
           )





        ],

      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'aboutus.dart';
import 'blogs.dart';
import 'tutorials.dart';
import 'workshops.dart';
import 'homepage.dart';



class tpgpage extends StatefulWidget {
  @override
  _tpgpageState createState() => _tpgpageState();
}

class _tpgpageState extends State<tpgpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
         // shadowColor: Colors.pinkAccent,

          title: Text("Welcome",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          bottom: TabBar(
            isScrollable: true,
            tabs:[
              Tab(
                child: Text("About us"),
              ),
              Tab(
                child: Text("Workshops"),
              ),
              Tab(
                child: Text("Tutorials"),
              ),
              Tab(
                child: Text("Blogs"),
              ),



            ],
          ),
        ) ,
        body: TabBarView(
          children: [
            about(),
            workshops(),
            tutorials(),
            blogs(),
          ],
        ),

      ),
    );

  }
}





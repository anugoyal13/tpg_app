import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'main.dart';
import 'tpgpage.dart';


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    double screenheight=MediaQuery.of(context).size.height;
    double screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white60,
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.redAccent,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tpgpage()));
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: 200,
                  width: 200,
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/tpgimage1.png'),
                    ),
                  ),
                ),
              ),
            ),
            FadeAnimatedTextKit(
              text: [
                'Virtual classes',
                'Free workshops',
                'Helpful tutors',
              ],
              textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
            TyperAnimatedTextKit(
              text: ['Flutter away to success'],
              textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent),
            ),
            ScaleAnimatedTextKit(

              text: ['TECH POWER GIRLS'],
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red),
            ),
            //SizedBox(height: 50,),
            Container(
              height: screenheight*0.60,
              width:screenwidth,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Center(

                    child: Carousel(


                      boxFit: BoxFit.contain,
                      images: [


                        AssetImage("assets/images/tpg3.jpeg"),
                        AssetImage("assets/images/tpg4.jpeg"),
                        AssetImage("assets/images/tpg5.jpeg"),
                        //AssetImage("assets/images/img.png"),
                      ],
                      animationCurve: Curves.fastOutSlowIn,
                      // animationDuration: Duration(milliseconds: 50),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



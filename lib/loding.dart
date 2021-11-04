import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:untitled5/Home.dart';

class Pixel extends StatefulWidget {
  const Pixel({Key? key}) : super(key: key);

  @override
  _PixelState createState() => _PixelState();
}

class _PixelState extends State<Pixel> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), ()=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home(),), (route) => false));



  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
              Image.asset('assets/sayeed.jpg',height: 250,width: 350,),
            SizedBox(height: 200,),
            SpinKitThreeInOut(color: Colors.greenAccent,size: 50,),
          ],
        ),
      ),



    );
  }
}

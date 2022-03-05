import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Switch Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Icon(
      CupertinoIcons.bell,
      color: Colors.green,
      size: 30.0,
    ),
           /* Icon(
              
      CupertinoIcons.bell_fill,
      color: Colors.green,
      size: 30.0, ),*/
            Container(alignment: Alignment.topLeft,
              child: new CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: Colors.green,
                ),),
           
            Container(alignment: Alignment.bottomLeft,
            child:Text('Value : $status', style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
               
            ),
           // textAlign: TextAlign.right,
           )),
           SizedBox(width: 30.0,),
           Container(alignment: Alignment.bottomLeft,
             child:
             CustomSwitch(
              activeColor: Colors.pinkAccent,
              value: status,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            )
           )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    
  home: Home()

  ));
  
  class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.yellow[50],
         
    appBar: AppBar(
      title: Text('Major project'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
    body: Center(
      child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
      children:[ SizedBox(
  width: 200.0,
  height: 300.0,
  //child: Card(child: Text('hi')),

child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                  
                  primary: Colors.green[500], //background color of button
                  //side: BorderSide(width:3, color:Colors.cyan[100]), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(20) //content padding inside button
                
              ),
                 onPressed: (){ 
                   
                }, 
                child: Text("flap") 
              )
            ),]
      //child: Image(
        //image: NetworkImage('https://unsplash.com/photos/LmyPLbbUWhA'),)
    
   /* floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Text('click'),
      ),*/
      ),
  ),);
    }
  }
  


import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  AssetImage dice1one = AssetImage('images/one.png');
  AssetImage dice2two = AssetImage('images/two.png');
  AssetImage dice3three = AssetImage('images/three.png');
  AssetImage dice4four = AssetImage('images/four.png');
  AssetImage dice5five = AssetImage('images/five.png');
  AssetImage dice6six = AssetImage('images/six.png'); 

  AssetImage diceImage1;
  AssetImage diceImage2;

  @override
  void initState(){
    super.initState();
    setState(() {
      diceImage1=dice1one;
      diceImage2=dice1one;
    });
  }
  
  void rolldice1()
  {
    int random = (1 + Random().nextInt(6));
    AssetImage img1;

    switch (random) {
      case 1:
        img1=dice1one;
       
        break;
      case 2:
        img1=dice2two;
        
        break;
        case 3:
        img1=dice3three;
      
        break;
        case 4:
        img1=dice4four;
        
        break;
        case 5:
        img1=dice5five;
       
        break;
        case 6:
        img1=dice6six;
        
        break;
    }

    
  setState((){
    diceImage1=img1;
    
  });
  }


  
  void rolldice2()
  {
    int random = (1 + Random().nextInt(6));
    AssetImage img2;

    switch (random) {
      case 1:
        
        img2=dice2two;
        break;
      case 2:
        
        img2=dice2two;
        break;
        case 3:
        
        img2=dice3three;
        break;
        case 4:
        
        img2=dice4four;
        break;
        case 5:
        
        img2=dice5five;
        break;
        case 6:
      
        img2=dice6six;
        break;
    }

    
  setState((){
    
    diceImage2=img2;
  });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roll Dice'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
      

          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: <Widget>[          
          Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child:
            Image(
              image: diceImage1,
              width: 100.0,
              height: 100.0,
            ),
            ),
            Expanded(
              child:
            Image(
              image: diceImage2,
              width: 100.0,
              height: 100.0,
            ),
            ),
           ],
        ), 
          ),
           
           Container(
            margin: EdgeInsets.all(50.0),
             child:Row(
               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
              
              RaisedButton(
               onPressed: rolldice1,
                textColor: Colors.black,
                child: Text('Roll dice1',style: TextStyle(fontSize: 20.0),),
                color: Colors.yellow,
      padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((40.0))),

             ),
              //),
              Spacer(),
          // Expanded(
              RaisedButton(
               onPressed: rolldice2,
                textColor: Colors.black,
                child: Text('Roll dice2',style: TextStyle(fontSize: 20.0),),
                color: Colors.yellow,
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((40.0))),
            ),
         //  ),

           ],)
           ),
          ],
         
          ),
        
        
      ),
    );
  }
}
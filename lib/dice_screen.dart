

import 'dart:math';
import 'package:flutter/material.dart';


class DiceAppScreen extends StatefulWidget {
  const DiceAppScreen({Key? key}) : super(key: key);

  @override
  State<DiceAppScreen> createState() => _DiceAppScreenState();
}



class _DiceAppScreenState extends State<DiceAppScreen> {
  var num= 1;  
  @override
  Widget build(BuildContext context) {
    
return Scaffold(
  backgroundColor: Colors.amber,
  appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.amber[800],
    title: const Text('Dice',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
    centerTitle: true,
  ),
  body: SafeArea(
    child: Center(
      child: Column(
        
        children:   [
          Expanded(child: Image(image: AssetImage('assets/images/dice$num.png'),width: 255,)) ,
          const SizedBox(width: 15,),
        //  Expanded(child: TextButton(
          
        //   onPressed: () {
        //     print('pressed right');
        //   },
        //   child: const Image(image: AssetImage('assets/images/dice1.png'),width: 55,))
        ElevatedButton(

          style: ButtonStyle(
           
            backgroundColor: MaterialStateProperty.all(Colors.black),
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 130)),
            
          ),
          onPressed: () {
         setState(() {
           num = Random().nextInt(6)+1;
         });
        }, child: const Text('Roll',style: TextStyle(fontSize: 35),)),
        const SizedBox(height: 60,)
          
        ],
      ),
    ),
  )
);
  }
}
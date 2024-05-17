import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class bmi extends StatelessWidget{
  final int age;
  final bool male;
  final int weight;
  final double result;
  final String name;
  bmi ({
    required this.result,
   required this.age,
      required this.male,
    required this.weight,
    required this.name,
}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text("Result",style:TextStyle(color: Color(0xff00008B),
            fontSize: 30,letterSpacing: 3)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Color(0xff00008B),
      body: Container(
        color: Color(0xff00008b),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("name : ${name}",
                 style: TextStyle(color: Colors.blue,fontSize: 35)),
             Text("Gender : ${male? "Male":"Female"}",
             style: TextStyle(color: Colors.blue,fontSize: 35)),
             Text("age : ${age}",
                 style: TextStyle(color: Colors.blue,fontSize: 35)),
             Text("weight : ${weight}",
                 style: TextStyle(color: Colors.blue,fontSize: 35)),
             SizedBox(height: 10,),
             Container(
               height: 50,
               width: 150,
               decoration: BoxDecoration(color:Color(0xff00008b),border:
               Border.all(color: Colors.blue,width: 4),
                   borderRadius: BorderRadius.circular(20)),
               child: Center(
                 child:Text(result.toInt().toString(),
                     style: TextStyle(color: Colors.blue,fontSize: 35)),
               ),
             ),
             SizedBox(height: 15,),
             Text("By MaHMouD ElDeeB",
                 style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold)),
           ],
         ),
       ),
      ),
    );
  }
}